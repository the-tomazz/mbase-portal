<?php

namespace App\Orchid\Resources;

use Orchid\Crud\Resource;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;
use Orchid\Screen\Fields\Input;

class GroupTypeResource extends Resource
{
	/**
	 * The model the resource corresponds to.
	 *
	 * @var string
	 */
	public static $model = \App\Models\GroupType::class;

	public static function permission(): ?string
	{
		return 'mbase2l.admin';
	}

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{
		return [
			Input::make('slug')
				->title('slug'),
			Input::make('name')
				->title('name'),
			Input::make('is_spatial_unit_group_type')
				->title('Is spatial unit group type')
		];
	}

	/**
	 * Get the columns displayed by the resource.
	 *
	 * @return TD[]
	 */
	public function columns(): array
	{
		return [
			TD::make('id'),
			TD::make('slug', "Slug"),
			TD::make('name', "Name"),
			TD::make('is_spatial_unit_group_type', "Is spatial unit group type")
				->render(function ($model) {
					return $model->is_spatial_unit_group_type == 0 ? 'false' : 'true';
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
		return [
			Sight::make('id', 'Id'),
			Sight::make('slug', 'Slug'),
			Sight::make('name', 'Name'),
			Sight::make('is_spatial_unit_group_type', 'Is spatial unit group type')
				->render(function ($model) {
					return $model->is_country == 0 ? 'false' : 'true';
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
}
