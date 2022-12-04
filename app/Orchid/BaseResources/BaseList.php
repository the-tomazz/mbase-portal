<?php

namespace App\Orchid\BaseResources;

use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class BaseList extends Resource
{
	public static $moduleList = [];
	/**
	 * Get the resource should be displayed in the navigation
	 *
	 * @return bool
	 */
	public static function displayInNavigation(): bool
	{
		return false;
	}

	protected function groupPermissions(User $user)
	{
		Log::debug([self::$moduleList]);

		foreach (self::$moduleList as $module)
		{
			if ($user->isInGroup('mbase2', $module, 'admin')) {
				return true;
			}
		}

		return count(self::$moduleList) == 0 && $user->hasRole('MBASE2LAdmin');
	}

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			Input::make('name')
				->title('Name'),
			Input::make('description')
				->title('Description'),
		];
	}

	/**
	 * Get the columns displayed by the resource.
	 *
	 * @return TD[]
	 */
	public function columns(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			TD::make('id')
				->sort()
				->filter(Input::make()),
			TD::make('name', "Name")
				->sort()
				->filter(Input::make()),
			TD::make('description', "Description")
				->sort()
				->filter(Input::make()),

			TD::make('created_at', 'Date of creation')
				->sort()
				->render(function ($model) {
					return $model->created_at->toDateTimeString();
				}),

			TD::make('updated_at', 'Update date')
				->sort()
				->render(function ($model) {
					return $model->updated_at->toDateTimeString();
				}),
		];
	}

	/**
	 * Get the sights displayed by the resource.
	 *
	 * @return Sight[]
	 */
	public function legend(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			Sight::make('id'),
			Sight::make('name', "Name"),
			Sight::make('description', "Description"),

			Sight::make('created_at', 'Date of creation')
				->render(function ($model) {
					return $model->created_at->toDateTimeString();
				}),

			Sight::make('updated_at', 'Update date')
				->render(function ($model) {
					return $model->updated_at->toDateTimeString();
				}),
		];
	}

	/**
	 * Get the filters available for the resource.
	 *
	 * @return array
	 */
	public function filters(): array
	{
		return [];
	}

	public static function permission(): ?string
	{
		return 'mbase2l.admin';
	}
}
