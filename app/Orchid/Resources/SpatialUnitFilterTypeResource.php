<?php

namespace App\Orchid\Resources;

use App\Models\SpatialUnitFilterType;
use App\Orchid\Filters\SpatialUnitFilterTypeAttributesFilter;
use App\Orchid\Filters\SpatialUnitFilterTypeFilter;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class SpatialUnitFilterTypeResource extends Resource
{
	/**
	 * Get the resource should be displayed in the navigation
	 *
	 * @return bool
	 */
	public static function displayInNavigation(): bool
	{
		return false;
	}

	/**
	 * The model the resource corresponds to.
	 *
	 * @var string
	 */
	public static $model = \App\Models\SpatialUnitFilterType::class;

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
		];
	}

	public static function permission(): ?string
	{
		return 'mbase2l.super_admin';
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
			Sight::make('slug', 'Slug')
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
			SpatialUnitFilterTypeFilter::class,
			SpatialUnitFilterTypeAttributesFilter::class
		];
	}
}
