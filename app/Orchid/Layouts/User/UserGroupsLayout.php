<?php

declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use App\Models\Group;
use App\Models\UsersGroups;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Rows;

class UserGroupsLayout extends Rows
{
	/**
	 * Views.
	 *
	 * @return Field[]
	 */
	public function fields(): array
	{
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
				->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id'])
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
				->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id'])
				->where('groups.group_type_id', '<>', 1) // no countries
				->orderBy('groups.id')
				->distinct();
		}

		$countrySpecificGroupsQuery = $query->clone();
		$moduleRolesQuery = $query->clone();
		$moduleParametersQuery = $query->clone();

		return [
			Select::make('country_specific_groups.')
				->fromQuery(
					$countrySpecificGroupsQuery
						->where('groups.group_type_id', '<>', 2) // not MBASE2 module roles
						->where('groups.group_type_id', '<>', 4), // not MBASE2 module parameters
					'name'
				)
				->multiple()
				->title(__('Country specific groups'))
				->help('Select groups'),

			Select::make('mbase2_module_roles.')
				->fromQuery(
					$moduleRolesQuery->where('groups.group_type_id', '=', 2), // MBASE2 module roles
					'name'
				)
				->multiple()
				->title(__('MBASE2 module roles'))
				->help('Select MBASE2 module roles'),

			Select::make('mbase2_module_parameters.')
				->fromQuery(
					$moduleParametersQuery->where('groups.group_type_id', '=', 4), // MBASE2 module parameters
					'name'
				)
				->multiple()
				->title(__('MBASE2 module parameters'))
				->help('Select MBASE2 module parameters'),
		];
	}
}
