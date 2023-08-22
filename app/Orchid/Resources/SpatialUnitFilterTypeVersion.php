<?php

namespace App\Orchid\Resources;

use Orchid\Crud\Resource;
use Orchid\Screen\TD;

class SpatialUnitFilterTypeVersion extends Resource
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
    public static $model = \App\Models\SpatialUnitFilterTypeVersion::class;

    /**
     * Get the fields displayed by the resource.
     *
     * @return array
     */
    public function fields(): array
    {
        return [];
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
			TD::make('title', __('Title'))->sort(),
			TD::make('description', __('Description'))->sort(),
			TD::make('spatial_unit_filter_type_id', __('Filter type'))
				->render(function ($model) {
					return $model->spatial_unit_filter_type->slug;
				})->sort(),
			TD::make('valid_from', "Valid from")
				->render(function ($model) {
					return $model->valid_from->format('Y-m-d');
				})->sort(),
			TD::make('valid_to', "Valid to")
				->render(function ($model) {
					return $model->valid_to->format('Y-m-d');
				})->sort(),

            TD::make('created_at', 'Date of creation')
                ->render(function ($model) {
                    return $model->created_at->toDateTimeString();
                }),

            TD::make('updated_at', 'Update date')
                ->render(function ($model) {
                    return $model->updated_at->toDateTimeString();
                }),
        ];
    }

	public static function permission(): ?string
	{
		return 'mbase2l.super_admin';
	}

    /**
     * Get the sights displayed by the resource.
     *
     * @return Sight[]
     */
    public function legend(): array
    {
        return [];
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
