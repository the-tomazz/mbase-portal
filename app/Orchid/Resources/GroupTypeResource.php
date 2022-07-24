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
			Input::make('is_country')
				->title('is_country')
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
			TD::make('is_country', "Is Country")
				->render(function($model) {
					return $model->is_country == 0 ? 'false' : 'true';
				}),
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
			Sight::make('is_country', 'Is Country')
			->render(function($model) {
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
