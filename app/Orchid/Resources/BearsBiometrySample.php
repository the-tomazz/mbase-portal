<?php

namespace App\Orchid\Resources;

use App\Models\BearsBiometryAnimalHandling;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\TD;

class BearsBiometrySample extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\BearsBiometrySample::class;

    /**
     * Get the fields displayed by the resource.
     *
     * @return array
     */
    public function fields(): array
    {
        return [
			Select::make('bears_biometry_animal_handling_id')
				->fromModel(BearsBiometryAnimalHandling::class, 'id')
				->title(__('Animal handling ID'))
				->required()
				->help(__('Please Animal Handling.')),

			Input::make('sample_code')
				->title(__('Sample code'))
				->help(__('Please input the sample code.')),

			Input::make('sample_tissue')
				->title(__('Sample type (sampled tissue)'))
				->help(__('Please input the Sample type (sampled tissue).')),
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
