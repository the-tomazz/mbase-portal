<?php

declare(strict_types=1);

namespace App\Orchid\Screens\User;

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

		return [
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
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return $this->user->exists ? 'Edit User' : 'Create User';
	}

	/**
	 * Display header description.
	 *
	 * @return string|null
	 */
	public function description(): ?string
	{
		return 'Details such as name, email and password';
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
		return [
			Button::make(__('Impersonate user'))
				->icon('login')
				->confirm('You can revert to your original state by logging out.')
				->method('loginAs')
				->canSee($this->user->exists && \request()->user()->id !== $this->user->id),

			Button::make(__('Remove'))
				->icon('trash')
				->confirm(__('Once the account is deleted, all of its resources and data will be permanently deleted. Before deleting your account, please download any data or information that you wish to retain.'))
				->method('remove')
				->canSee($this->user->exists),

			Button::make(__('Save'))
				->icon('check')
				->method('save'),
		];
	}

	/**
	 * @return \Orchid\Screen\Layout[]
	 */
	public function layout(): iterable
	{
		$layout = [
			Layout::block(UserEditLayout::class)
				->title(__('Profile Information'))
				->description(__('Update your account\'s profile information and email address.')),

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
		$request->validate(
			[
				'user.email' => [
					'required',
					Rule::unique(User::class, 'email')->ignore($user),
				],
			]
		);

		$permissions = collect($request->get('permissions'))
			->map(
				function ($value, $key) {
					return [base64_decode($key) => $value];
				}
			)
			->collapse()
			->toArray();

		$user->when(
			$request->filled('user.password'),
			function (Builder $builder) use ($request) {
				$builder->getModel()->password = Hash::make($request->input('user.password'));
			}
		);

		$data = $request->collect('user')->except(['password', 'permissions', 'roles'])->toArray();
		if (array_key_exists('country_id', $data)) $data['country_id'] = $data['country_id'][0];

		$user
			->fill($data)
			->fill(['permissions' => $permissions])
			->save();

		$user->replaceRoles($request->input('user.roles'));

		$user = \App\Models\User::find($user->id);

		// TODO: probably better way to update
		$user->groups()->detach();
		if ($request->collect('country_specific_groups')) {
			$user->groups()->attach($request->collect('country_specific_groups'));
		}

		if ($request->collect('mbase2_module_roles')) {
			$user->groups()->attach($request->collect('mbase2_module_roles'));
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
