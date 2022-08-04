<?php

namespace App\Orchid\Resources;

use Illuminate\Database\Eloquent\Model;
use Orchid\Crud\Resource;
use Orchid\Crud\ResourceRequest;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class Mbase2lModuleResource extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Mbase2lModule::class;

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
			Input::make('properties')
				->title('Properties'),
			Input::make('enabled')
				->title('Enabled')
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
			TD::make('properties', "Properties"),
			TD::make('enabled', "Enabled")
				->render(function ($model) {
					return $model->enabled ? 'true' : 'false';
				}),
            TD::make('created_at', 'Date of creation')
                ->render(function ($model) {
                    return $model->created_at != null ? $model->created_at->toDateTimeString() : 'null';
                }),
            TD::make('updated_at', 'Update date')
                ->render(function ($model) {
					return $model->updated_at != null ? $model->updated_at->toDateTimeString() : 'null';
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
			Sight::make('properties', 'Properties'),
			Sight::make('enabled', 'Enabled'),
			Sight::make('created_at', 'Created at'),
			Sight::make('updated_at', 'Updated at'),

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
