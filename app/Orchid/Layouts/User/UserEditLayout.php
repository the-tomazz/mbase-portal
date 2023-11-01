<?php

declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use App\Models\Animal;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Layouts\Rows;

class UserEditLayout extends Rows
{
	/**
	 * Views.
	 *
	 * @return Field[]
	 */
	public function fields(): array
	{
		$editedUser = $this->query->get('user');

		if ($editedUser && $editedUser->exists) {
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
				if ($editedUser->isInGroup('mbase2', $moduleName)) {
					$userIsMemberAGroupValidForDataEdit = true;
					break;
				}
			}

			$userEditLayoutDataAllowed = $userIsMemberAGroupValidForDataEdit;
		} else {
			$userEditLayoutDataAllowed = true;
		}

		return [
			Input::make('user.name')
				->type('text')
				->max(255)
				->required()
				->title(__('Name and surname'))
				->disabled(!$userEditLayoutDataAllowed)
				->placeholder(__('Name and surname')),

			Input::make('user.username')
				->type('text')
				->required()
				->max(255)
				->title(__('Username'))
				->disabled(!$userEditLayoutDataAllowed),

			Input::make('user.email')
				->type('email')
				->required()
				->title(__('Email'))
				->placeholder(__('Email'))
				->disabled(!$userEditLayoutDataAllowed),
		];
	}
}
