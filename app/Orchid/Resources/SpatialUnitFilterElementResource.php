<?php

namespace App\Orchid\Resources;

use App\Models\SpatialUnitFilterElement;
use App\Models\SpatialUnitFilterTypeVersion;
use App\Orchid\Filters\SpatialUnitFilterElementAttributesFilter;
use App\Orchid\Filters\SpatialUnitFilterElementFilter;
use App\Orchid\Filters\SpatialUnitFilterTypeFilter;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Selection;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class SpatialUnitFilterElementResource extends Resource
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
	public static $model = \App\Models\SpatialUnitFilterElement::class;

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{
		return [
			/* Input::make('slug')
				->title('Slug'),
			Input::make('name')
				->title('Name'),
			Relation::make('spatial_unit_filter_type_version_id')
				->fromModel(SpatialUnitFilterTypeVersion::class, 'title')
				->title(__('Please select the spatial unit filter version')) */
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
			TD::make('id')->sort(),
			TD::make('slug', "Slug")->sort()->filter(Input::make()),
			TD::make('name', "Name")->sort()->filter(Input::make()),
			TD::make('spatial_unit_filter_type_version_slug', "Version")
				->render(function ($model) {
					return $model->spatial_unit_filter_type_version->title;
				})->sort(),
			TD::make('spatial_unit_filter_type_version_valid_from', "Valid from")
				->render(function ($model) {
					return $model->spatial_unit_filter_type_version->valid_from->format('Y-m-d');
				})->sort(),
			TD::make('spatial_unit_filter_type_version_valid_to', "Valid from")
				->render(function ($model) {
					return $model->spatial_unit_filter_type_version->valid_to->format('Y-m-d');
				})->sort(),
			TD::make('spatial_unit_filter_type_id', "Filter type")
				->render(function ($model) {
					return $model->spatial_unit_filter_type_version->spatial_unit_filter_type->slug;
				})->sort()
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
		return [];
	}
}
