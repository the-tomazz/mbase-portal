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
		return [
			Input::make('user.name')
				->type('text')
				->max(255)
				->required()
				->title(__('Name and surname'))
				->placeholder(__('Name and surname')),

			Input::make('user.username')
				->type('text')
				->required()
				->max(255)
				->title(__('Username')),

			Input::make('user.email')
				->type('email')
				->required()
				->title(__('Email'))
				->placeholder(__('Email')),

		];
	}
}
