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
		$query = Group::query();

		return [
			Select::make('user.groups.')
				->fromQuery($query, 'name')
				->multiple()
				->title(__('Groups'))
				->help('Select groups'),
		];
	}
}
