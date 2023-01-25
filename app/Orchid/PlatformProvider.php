<?php

declare(strict_types=1);

namespace App\Orchid;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
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
			Menu::make('Home')
				->icon('home')
				->title(__('Mbase2L'))
				->href('/mbase2/map')
		];

		if (Auth::user()->isInGroup('mbase2', 'mortbiom')) {
			$menu[] = Menu::make(__('Mortality and biometry'))
				->icon('organization')
				->route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->defaultVisualisationAnimalStatus()]);
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Genetic samples')
				->icon('list')
				->href('/mbase2/modules/gensam');
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Camera Trapping')
				->icon('list')
				->href('/mbase2/modules/ct');
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Signs Of Presence')
				->icon('list')
				->href('/mbase2/modules/sop');
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Counting')
				->icon('list')
				->href('/mbase2/modules/cnt');
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Damages')
				->icon('list')
				->href('/mbase2/modules/dmg');
		}

		if (Auth::user()->isInGroup('mbase2', 'gensam2')) {
			$menu[] = Menu::make('Interventions')
				->icon('list')
				->href('/mbase2/modules/interventions');
		}

		if (Auth::user()->hasRole('MBASE2LAdmin')) {
			// USERS AND ROLES
			$menu[] = Menu::make('Roles')
				->title('Users and roles')
				->icon('friends')
				->href('/admin/roles');

			$menu[] = Menu::make('Users')
				->icon('user')
				->href('/admin/users');

			// USER GROUPS AND GROUP TYPES
			$menu[] = Menu::make('User group types')
				->icon('layers')
				->title('User groups and group types')
				->href('/admin/crud/list/group-type-resources');

			$menu[] = Menu::make('User groups')
				->icon('friends')
				->href('/admin/crud/list/group-resources');

			// SPATIAL UNIT FILTER TYPES AND ELEMENTS
			$menu[] = Menu::make('Spatial Unit Filter Types')
				->icon('layers')
				->title('Spatial unit filter types and elements')
				->href('/admin/crud/list/spatial-unit-filter-type-resources');

			$menu[] = Menu::make('Spatial Unit Filter Elements')
				->icon('safari')
				->href('/admin/crud/list/spatial-unit-filter-element-resources');

			// GENERAL LISTS
			if (Auth::user()->hasRole('MBASE2LAdmin')) {
				$menu[] = Menu::make('Licence')
					->title('General lists')
					->icon('list')
					->href('/admin/crud/list/licence-lists');

				$menu[] = Menu::make('Sample type')
					->icon('list')
					->href('/admin/crud/list/sample-type-lists');

				$menu[] = Menu::make('Sex')
					->icon('list')
					->href('/admin/crud/list/sex-lists');

				$menu[] = Menu::make('Species')
					->icon('list')
					->href('/admin/crud/list/species-lists');
			}

			if (Auth::user()->isInGroup('mbase2', 'mortbiom', 'admin')) {
				// MORTBIOM MODULE RELATED LISTS
				$menu[] = Menu::make('Conflict Animal Removal')
					->title('Mortality and biometry lists')
					->icon('list')
					->href('/admin/crud/list/conflict-animal-removal-lists');

				$menu[] = Menu::make('Type of removal')
					->icon('list')
					->href('/admin/crud/list/animal-withdrawal-lists');

				$menu[] = Menu::make('Loss Reason')
					->icon('list')
					->href('/admin/crud/list/biometry-loss-reason-lists');

				$menu[] = Menu::make('Presence of bear collar')
					->icon('list')
					->href('/admin/crud/list/collar-lists');

				$menu[] = Menu::make('Lynx fur pattern')
					->icon('list')
					->href('/admin/crud/list/fur-pattern-in-lynx-lists');

				$menu[] = Menu::make('Bear fur color')
					->icon('list')
					->href('/admin/crud/list/color-lists');

				$menu[] = Menu::make('Incisors Wear')
					->icon('list')
					->href('/admin/crud/list/incisors-wear-lists');

				$menu[] = Menu::make('Place Of Removal')
					->icon('list')
					->href('/admin/crud/list/place-type-lists');

				$menu[] = Menu::make('Teats usage')
					->icon('list')
					->href('/admin/crud/list/teats-wear-lists');

				$menu[] = Menu::make('Tooth Type')
					->icon('list')
					->href('/admin/crud/list/tooth-type-lists');
			}
		}

		return $menu;
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
