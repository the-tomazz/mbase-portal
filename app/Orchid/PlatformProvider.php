<?php

declare(strict_types=1);

namespace App\Orchid;

use Illuminate\Support\Facades\Auth;
use Orchid\Platform\Dashboard;
use Orchid\Platform\ItemPermission;
use Orchid\Platform\OrchidServiceProvider;
use Orchid\Screen\Actions\Menu;
use Orchid\Support\Color;

class PlatformProvider extends OrchidServiceProvider
{
	/**
	 * @param Dashboard $dashboard
	 */
	public function boot(Dashboard $dashboard): void
	{
		parent::boot($dashboard);

		// ...
	}

	/**
	 * @return Menu[]
	 */
	public function registerMainMenu(): array
	{
		$menu = [
			Menu::make('Map')
				->icon('bag')
				->href('/mbase2/map'),

			Menu::make('Animal Handlings (Biometry)')
				->icon('list')
				->route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->default_animal_status])
		];

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Genetic samples')
					->icon('list')
					->href('/mbase2/modules/gensam')
			);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Camera Trapping')
					->icon('list')
					->href('/mbase2/modules/ct')
			);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Signs Of Presence')
					->icon('list')
					->href('/mbase2/modules/sop')
			);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Counting')
					->icon('list')
					->href('/mbase2/modules/cnt')
			);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Damages')
					->icon('list')
					->href('/mbase2/modules/dmg')
			);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			array_push(
				$menu,
				Menu::make('Interventions')
					->icon('list')
					->href('/mbase2/modules/interventions')
			);
		}

		return [
			Menu::make(__('Dashboard'))
				->icon('monitor')
				->route('home')
				->title(__('Dashboard')),

			Menu::make(__('Users'))
				->icon('user')
				->route('platform.systems.users')
				->permission('platform.systems.users')
				->title(__('Access rights')),

			Menu::make(__('Roles'))
				->icon('lock')
				->route('platform.systems.roles')
				->permission('platform.systems.roles'),

			Menu::make('MBase2L menu')
				->icon('code')
				->list($menu),
		];
	}

	/**
	 * @return Menu[]
	 */
	public function registerProfileMenu(): array
	{
		return [
			Menu::make('Profile')
				->route('platform.profile')
				->icon('user'),
		];
	}

	/**
	 * @return ItemPermission[]
	 */
	public function registerPermissions(): array
	{
		return [
			ItemPermission::group(__('System'))
				->addPermission('platform.systems.roles', __('Roles'))
				->addPermission('platform.systems.users', __('Users')),
		];
	}
}
