<?php

declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\Group;
use App\Models\GroupType;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Persona;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class UserListLayout extends Table
{
	/**
	 * @var string
	 */
	public $target = 'users';

	/**
	 * @return TD[]
	 */
	public function columns(): array
	{
		return [
			TD::make('name', __('Name and surname'))
				->sort()
				->cantHide()
				->filter(Input::make())
				->render(function (User $user) {
					return new Persona($user->presenter());
				}),

			TD::make('email', __('Email'))
				->sort()
				->cantHide()
				->filter(Input::make())
				->render(function (User $user) {
					return ModalToggle::make($user->email)
						->modal('asyncEditUserModal')
						->modalTitle($user->presenter()->title())
						->method('saveUser')
						->asyncParameters([
							'user' => $user->id,
						]);
				}),

			TD::make('country_id', __('Country'))
				->sort()
				->filter(
					Select::make()->fromQuery(
						Group::where('group_type_id', '=', GroupType::COUNTRIES)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name',
						'id'
					)
					->empty(__('<Select>'))
				)
				->render(function (User $user) {
					return $user->country_id != null ? Group::where('id', $user->country_id)->first()->name : null;
				}),


			TD::make('user_module_roles', __('MBASE2 module roles'))
				->sort()
				->render(function (User $user) {
					$groups = '';
					$length = 0;
					foreach ($user->groups()->where('group_type_id', '=', GroupType::MBASE2_MODULE_ROLES)->orderBy('group_type_id', 'desc')->get() as $group) {
						if ($groups == '') {
							$groups .= $group->name;
						} else {
							$groups .= ', ' . ($length>20 ? '<br>' : '') . $group->name;
							if ($length>20) {
								$length = 0;
							}
						}

						$length += strlen($group->name);
					}

					return $groups;
				}),

			TD::make('user_groups', __('MBASE2 module parameters'))
				->sort()
				->render(function (User $user) {
					$groups = '';
					$length = 0;
					foreach ($user->groups()->where('group_type_id', '=', GroupType::MBASE2_MODULE_PARAMETERS)->orderBy('group_type_id', 'desc')->get() as $group) {
						if ($groups == '') {
							$groups .= $group->name;
						} else {
							$groups .= ', ' . ($length>20 ? '<br>' : '') . $group->name;
							if ($length>20) {
								$length = 0;
							}
						}

						$length += strlen($group->name);
					}

					return $groups;
				}),

			TD::make('updated_at', __('Last edit'))
				->sort()
				->render(function (User $user) {
					return $user->updated_at->toDateTimeString();
				}),

			TD::make(__('Actions'))
				->align(TD::ALIGN_CENTER)
				->width('100px')
				->render(function (User $user) {
					return DropDown::make()
						->icon('options-vertical')
						->list(
							array_merge(
								[
									Link::make(__('Edit'))
										->route('platform.systems.users.edit', $user->id)
										->icon('pencil'),
								],
								BearsBiometryAnimalHandling::where('data_entered_by_user_id', '=', $user->id)->count() == 0 ?
									[ Button::make(__('Delete'))
											->icon('trash')
											->confirm(__('Once the account is deleted, all of its resources and data will be permanently deleted. Before deleting your account, please download any data or information that you wish to retain.'))
											->method('remove', [
												'id' => $user->id,
											])
									] :
									[]
							)
						);
				}),
		];
	}
}
