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
				->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id'])
				->where('groups.group_type_id', '<>', 1) // no countries
				->orderBy('groups.id')
				->distinct();
		}

		$countrySpecificGroupsQuery = $query->clone()
			->where('groups.group_type_id', '<>', 2) // not MBASE2 module roles
			->where('groups.group_type_id', '<>', 4); // not MBASE2 module parameters

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

		return [
			Select::make('country_specific_groups.')
				->fromQuery(
					$countrySpecificGroupsQuery,
					'name'
				)
				->multiple()
				->title(__('Country specific groups'))
				->help('Select groups'),

			Select::make('mbase2_module_roles.')
				->fromQuery(
					$moduleRolesQuery,
					'name'
				)
				->multiple()
				->title(__('MBASE2 module roles'))
				->help('Select MBASE2 module roles'),

			Select::make('mbase2_module_parameters.')
				->fromQuery(
					$moduleParametersQuery,
					'name'
				)
				->multiple()
				->title(__('MBASE2 module parameters'))
				->help('Select MBASE2 module parameters'),
		];
	}
}
