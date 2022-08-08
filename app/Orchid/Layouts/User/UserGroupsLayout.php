<?php
declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use App\Models\Group;
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

		/*
		 * select
		   groups.id,
		   groups.slug,
		   countries.id,
		   countries.slug
		 from
		   groups
		 join
		   groups_group_types_countries
		 on
		   groups_group_types_countries.group_id = groups.id
		 join
		   group_types_countries
		 on
		   group_types_countries.id = groups_group_types_countries.group_type_country_id
		 join
		   groups countries
		 on
		   group_types_countries.country_id = countries.id
		 order by
		   countries.id,
		   groups.id;
		 */


		$query = Group::query()
//			->join('groups_group_types_countries', 'groups.id', '=', 'group_types_countries.country_id')
//			->join('group_types_countries', 'group_types_countries.id', '=', 'groups_group_types_countries.group_type_country_id')
//			->join()
		;

		return [
			Select::make('user.groups.')
				->fromQuery($query, 'name')
				->multiple()
				->title(__('Groups'))
				->help('Select groups'),
		];
	}
}
