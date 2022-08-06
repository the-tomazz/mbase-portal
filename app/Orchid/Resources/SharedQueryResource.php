<?php

namespace App\Orchid\Resources;

use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class SharedQueryResource extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\SharedQuery::class;

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
			Input::make('parameters')
				->title('Parameters'),
			Select::make('published')
				->options([1 => 'true', 0 => 'false'])
				->title('Published')
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

			TD::make('slug', 'Slug'),
			TD::make('name', 'Name'),
			TD::make('parameters', 'Parameters'),
			TD::make('published', 'Published')
				->render(function($model) {
					return $model->published == 0 ? 'false' : 'true';
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
			Sight::make('parameters', 'Parameters'),
			Sight::make('published', 'Published')
				->render(function($model) {
					return $model->published == 0 ? 'false' : 'true';
				}),
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
}
