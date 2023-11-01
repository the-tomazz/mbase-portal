<?php

declare(strict_types=1);

namespace App\Orchid\Screens\User;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\Group;
use App\Models\GroupType;
use App\Orchid\Layouts\Role\RolePermissionLayout;
use App\Orchid\Layouts\User\UserEditLayout;
use App\Orchid\Layouts\User\UserGroupsLayout;
use App\Orchid\Layouts\User\UserPasswordLayout;
use App\Orchid\Layouts\User\UserRoleLayout;
use App\Orchid\Layouts\User\UserCountryLayout;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;
use Orchid\Access\UserSwitch;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Platform\Models\Role;
use Orchid\Screen\Action;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Screen;
use Orchid\Support\Color;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Toast;

class UserEditScreen extends Screen
{
	/**
	 * @var User
	 */
	public $user;

	/**
	 * Query data.
	 *
	 * @param User $user
	 *
	 * @return array
	 */
	public function query(User $user): iterable
	{
		$user->load(['roles']);

		$payload = [
			'user'       => $user,
			'permission' => $user->getStatusPermission(),
			'country_specific_groups' => $user->groups
				->where('group_type_id', '<>', GroupType::COUNTRIES)
				->where('group_type_id', '<>', GroupType::MBASE2_MODULE_ROLES)
				->where('group_type_id', '<>', GroupType::MBASE2_MODULE_PARAMETERS),
			'mbase2_module_roles' => $user->groups
				->where('group_type_id', '<>', GroupType::COUNTRIES)
				->where('group_type_id', GroupType::MBASE2_MODULE_ROLES),
			'mbase2_module_parameters' => $user->groups
				->where('group_type_id', '<>', GroupType::COUNTRIES)
				->where('group_type_id', GroupType::MBASE2_MODULE_PARAMETERS),
		];

		return $payload;
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return $this->user->exists ? __('Edit User') : __('Create User');
	}

	/**
	 * Display header description.
	 *
	 * @return string|null
	 */
	public function description(): ?string
	{
		return __('Details such as name, email and password');
	}

	/**
	 * @return iterable|null
	 */
	public function permission(): ?iterable
	{
		return [
			'platform.systems.users',
		];
	}

	/**
	 * Button commands.
	 *
	 * @return Action[]
	 */
	public function commandBar(): iterable
	{
		return array_merge(
			[
				Button::make(__('Impersonate user'))
					->icon('login')
					->confirm(__('You can revert to your original state by logging out.'))
					->method('loginAs')
					->canSee($this->user->exists && \request()->user()->id !== $this->user->id),
			],
			BearsBiometryAnimalHandling::where('data_entered_by_user_id', '=', $this->user->id)->count() == 0 ?
				[
					Button::make(__('Remove'))
						->icon('trash')
						->confirm(__('Once the account is deleted, all of its resources and data will be permanently deleted. Before deleting your account, please download any data or information that you wish to retain.'))
						->method('remove')
						->canSee($this->user->exists),
				] :
				[],
			[
				Button::make(__('Save'))
					->icon('check')
					->method('save')
			]
		);
	}

	/**
	 * @return \Orchid\Screen\Layout[]
	 */
	public function layout(): iterable
	{
		$layout = [
			Layout::block(UserEditLayout::class)
				->title(__('Profile Information'))
				->description(__('Your account\'s profile information and email address.')),

			Layout::block(UserPasswordLayout::class)
				->title(__('Password'))
				->description(__('Ensure your account is using a long, random password to stay secure.')),
		];

		$layout[] = Layout::block(UserCountryLayout::class)
			->title(__('Country'))
			->description(__('Select user country'));

		$layout[] = Layout::block(UserGroupsLayout::class)
			->title(__('Groups'))
			->description(__('Select group to add'));

		if (Auth::user()->hasAccess('platform.systems.roles')) {
			$layout[] = Layout::block(UserRoleLayout::class)
				->title(__('Roles'))
				->description(__('A Role defines a set of tasks a user assigned the role is allowed to perform.'))
				->commands(
					!Auth::user()->hasAccess('platform.systems.permissions') ?
						Button::make(__('Save'))
						->type(Color::DEFAULT())
						->icon('check')
						->canSee($this->user->exists)
						->method('save') : null
				);
		}

		if (Auth::user()->hasAccess('platform.systems.permissions')) {
			$layout[] = Layout::block(RolePermissionLayout::class)
				->title(__('Permissions'))
				->description(__('Allow the user to perform some actions that are not provided for by his roles'))
				->commands(
					Button::make(__('Save'))
						->type(Color::DEFAULT())
						->icon('check')
						->canSee($this->user->exists)
						->method('save')
				);
		}

		return $layout;
	}

	/**
	 * @param User    $user
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function save(User $user, Request $request)
	{
		$data = $request->collect('user')->except(['password', 'permissions', 'roles'])->toArray();

		if ($user->exists) {
			$thisUserGroupSlugs = auth()->user()->groups->pluck('slug');
			$modulesAdministeredByThisUser = [];

			foreach ($thisUserGroupSlugs as $groupSlug) {
				$explodedGroupSlug = explode('-', $groupSlug);
				if ($explodedGroupSlug[2] == 'admins') {
					$modulesAdministeredByThisUser[] = $explodedGroupSlug[1];
				}
			}

			$userIsMemberAGroupValidForDataEdit = false;
			foreach ($modulesAdministeredByThisUser as $moduleName) {
				if ($user->isInGroup('mbase2', $moduleName)) {
					$userIsMemberAGroupValidForDataEdit = true;
					break;
				}
			}

			$userEditLayoutDataAllowed = $userIsMemberAGroupValidForDataEdit;
		} else {
			$userEditLayoutDataAllowed = true;
			$data['password'] = Hash::make($request->input('user.password') ? $request->input('user.password') : '1234567890');
		}

		if ($userEditLayoutDataAllowed) {
			$request->validate(
				[
					'user.email' => [
						'required',
						Rule::unique(User::class, 'email')->ignore($user),
					],
					'user.username' => [
						'required',
						Rule::unique(User::class, 'username')->ignore($user),
					],
				]
			);

			$user->when(
				$request->filled('user.password'),
				function (Builder $builder) use ($request) {
					$builder->getModel()->password = Hash::make($request->input('user.password'));
				}
			);
		}

		$permissions = collect($request->get('permissions'))
			->map(
				function ($value, $key) {
					return [base64_decode($key) => $value];
				}
			)
			->collapse()
			->toArray();

		if (array_key_exists('country_id', $data)) $data['country_id'] = $data['country_id'][0];

		$user
			->fill($data)
			->fill(['permissions' => $permissions]);

		$user->save();

		$roles = $request->input('user.roles');

		if (!$roles || auth()->user()->hasRole('MBASE2LSuperAdmin')) {
			$user->replaceRoles($roles);
		} else {
			$user->removeRoleBySlug('MBASE2LRegisteredUser');

			foreach ($roles as $role) {
				$user->addRole(Role::find($role));
			}
		}

		$user = \App\Models\User::find($user->id);

		if (auth()->user()->country != null) {
			$query = Group::query()
				->join(
					'groups_group_types_countries',
					function ($join) {
						$join->on('groups_group_types_countries.group_id', '=', 'groups.id');
					}
				)
				->join(
					'group_types_countries',
					function ($join) {
						$join->on('group_types_countries.id', '=', 'groups_group_types_countries.group_type_country_id')
							->where('group_types_countries.country_id', '=', auth()->user()->country->id);
					}
				)
				->join(
					'users_groups',
					function ($join) use ($user) {
						$join->on('users_groups.group_id', '=', 'groups.id')
							->where('users_groups.user_id', '=', $user->id);
					}
				)
				->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id'])
				->where('groups.group_type_id', '<>', 1) // no countries
				->orderBy('groups.id')
				->distinct();
		} else { // admin
			$query = Group::query()
				->join(
					'groups_group_types_countries',
					function ($join) {
						$join->on('groups_group_types_countries.group_id', '=', 'groups.id');
					}
				)
				->join(
					'group_types_countries',
					function ($join) {
						$join->on('group_types_countries.id', '=', 'groups_group_types_countries.group_type_country_id');
					}
				)
				->join(
					'users_groups',
					function ($join) use ($user) {
						$join->on('users_groups.group_id', '=', 'groups.id')
							->where('users_groups.user_id', '=', $user->id);
					}
				)
				->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id'])
				->where('groups.group_type_id', '<>', 1) // no countries
				->orderBy('groups.id')
				->distinct();
		}

		$existingCountrySpecificGroupsQuery = $query->clone()
			->where('groups.group_type_id', '<>', 2) // not MBASE2 module roles
			->where('groups.group_type_id', '<>', 4); // not MBASE2 module parameters

		$existingCountrySpecificGroups = $existingCountrySpecificGroupsQuery->get();

		foreach ($existingCountrySpecificGroups as $existingCountrySpecificGroup) {
			$user->groups()->detach($existingCountrySpecificGroup->id);
		}

		if ($request->collect('country_specific_groups')) {
			$user->groups()->attach($request->collect('country_specific_groups'));
		}

		$thisUserGroupSlugs = auth()->user()->groups->pluck('slug');
		$modulesAdministeredByThisUser = [];

		foreach ($thisUserGroupSlugs as $groupSlug) {
			$explodedGroupSlug = explode('-', $groupSlug);
			if ($explodedGroupSlug[2] == 'admins') {
				$modulesAdministeredByThisUser[] = $explodedGroupSlug[1];
			}
		}

		$moduleRolesQuery = $query->clone()
			->where('groups.group_type_id', '=', 2) // MBASE2 module roles
			->where(function ($query) use ($modulesAdministeredByThisUser) {
				foreach ($modulesAdministeredByThisUser as $key => $moduleName) {
					if ($key == 0) {
						$query->where('groups.slug', 'like', 'mbase2-' . $moduleName . '%');
					} else {
						$query->orWhere('groups.slug', 'like', 'mbase2-' . $moduleName . '%');
					}
				}
			});

		$moduleRoles = $moduleRolesQuery->get();

		foreach ($moduleRoles as $moduleRole) {
			$user->groups()->detach($moduleRole->id);
		}

		if ($request->collect('mbase2_module_roles')) {
			$user->groups()->attach($request->collect('mbase2_module_roles'));
		}

		$moduleParametersQuery = $query->clone()
			->where('groups.group_type_id', '=', 4) // MBASE2 module parameters
			->where(function ($query) use ($modulesAdministeredByThisUser) {
				foreach ($modulesAdministeredByThisUser as $key => $moduleName) {
					if ($key == 0) {
						$query->where('groups.slug', 'like', $moduleName . '%');
					} else {
						$query->orWhere('groups.slug', 'like', $moduleName . '%');
					}
				}
			});

		$moduleParameters = $moduleParametersQuery->get();

		foreach ($moduleParameters as $moduleParameters) {
			$user->groups()->detach($moduleParameters->id);
		}

		if ($request->collect('mbase2_module_parameters')) {
			$user->groups()->attach($request->collect('mbase2_module_parameters'));
		}

		Toast::info(__('User was saved.'));

		return redirect()->route('platform.systems.users');
	}

	/**
	 * @param User $user
	 *
	 * @throws \Exception
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 *
	 */
	public function remove(User $user)
	{
		$user->delete();

		Toast::info(__('User was removed'));

		return redirect()->route('platform.systems.users');
	}

	/**
	 * @param User $user
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function loginAs(User $user)
	{
		UserSwitch::loginAs($user);

		Toast::info(__('You are now impersonating this user'));

		return redirect()->route(config('platform.index'));
	}
}
