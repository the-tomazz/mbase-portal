<?php

declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use Orchid\Platform\Models\Role;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Rows;

class UserRoleLayout extends Rows
{
    /**
     * Views.
     *
     * @return Field[]
     */
    public function fields(): array
    {
		$roles = Role::query();
		if (!auth()->user()->hasRole('MBASE2LSuperAdmin')) {
			$roles->where('slug', '=', 'MBASE2LRegisteredUser');
		}

        return [
            Select::make('user.roles.')
                // ->fromModel(Role::class, 'name')
				->fromQuery($roles, 'name')
                ->multiple()
                ->title(__('Name role'))
                ->help('Specify which groups this account should belong to'),
        ];
    }
}
