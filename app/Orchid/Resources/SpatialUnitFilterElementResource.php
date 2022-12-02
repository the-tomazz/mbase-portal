<?php

namespace App\Orchid\Resources;

use App\Orchid\Filters\SpatialUnitFilterElementAttributesFilter;
use App\Orchid\Filters\SpatialUnitFilterElementFilter;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class SpatialUnitFilterElementResource extends Resource
{
	/**
	 * The model the resource corresponds to.
	 *
	 * @var string
	 */
	public static $model = \App\Models\SpatialUnitFilterElement::class;

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{
		return [
			Input::make('slug')
				->title('Slug'),
			Input::make('name')
				->title('Name'),
			Input::make('spatial_unit_filter_type_id')
				->title('Spatial unit filter type id')
		];
	}

	public static function permission(): ?string
	{
		return 'mbase2l.admin';
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
			TD::make('spatial_unit_filter_type_id', "Spatial unit filter type id")
				->render(function ($model) {
					return $model->spatial_unit_filter_type->slug;
				})
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
			Sight::make('spatial_unit_filter_type_id', 'Spatial unit filter type id'),
		];
	}

	/**
	 * Get the filters available for the resource.
	 *
	 * @return array
	 */
	public function filters(): array
	{
		return [
			SpatialUnitFilterElementFilter::class,
			SpatialUnitFilterElementAttributesFilter::class
		];
	}
}
