<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\AnimalHandlingListView;
use App\Models\PlaceTypeList;
use App\Models\SexList;
use App\Models\SpeciesList;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class AnimalHandlingListViewListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'animalHandlings';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('animal_id', "Animal ID")
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_id)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $animalHandlingListView->animal_id, $animalHandlingListView ]);
				})
				->sort(),

			TD::make('animal_name', "Name")
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_name)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $animalHandlingListView->animal_id, $animalHandlingListView ]);
				})
				->sort()
				->filter(Input::make()),

			TD::make('species_list_id', "Species")
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->species_list->name)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $animalHandlingListView->animal_id, $animalHandlingListView ]);
				})
				->sort()
				->filter(Select::make()->fromModel(SpeciesList::class, 'name')->empty(__('<Empty>'))),

			TD::make('sex_list_id', "Sex")
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->sex_list->name)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $animalHandlingListView->animal_id, $animalHandlingListView ]);
				})
				->sort()
				->filter(Select::make()->fromModel(SexList::class, 'name')->empty(__('<Empty>'))),

			TD::make('animal_status', __("Status"))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->animal_status == Animal::STR_ALIVE
						? '<i class="text-success">●</i> ' . __('Alive')
						: '<i class="text-danger">●</i> ' . __('Dead');
				})
				->sort()
				->filter(Select::make()->options([
					Animal::STR_ALIVE => __('Alive'),
					Animal::STR_DEAD => __('Dead'),
				])->empty(__('<Empty>'))),

			TD::make('animal_handling_date', 'Handling date')
				->render(function ($model) {
					return $model->animal_handling_date->toDateString();
				})
				->sort(),

			TD::make('animal_died_at', 'Died at')
				->render(function ($model) {
					return $model->animal_died_at->toDateString();
				})
				->sort(),

			TD::make('bears_biometry_data_status', "Biometry data")
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->bears_biometry_data_status == AnimalHandlingListView::STR_EXISTS
						? Link::make(__('Biometry data') . ' ' . $animalHandlingListView->bears_biometry_data_id)
							->route('platform.bearsBiometryData.edit', $animalHandlingListView->bears_biometry_data_id)
						: $animalHandlingListView->bears_biometry_data_id;
				})
				->sort()
				->filter(Select::make()->options([
					AnimalHandlingListView::STR_EXISTS => __('Exists'),
					AnimalHandlingListView::STR_MISSING => __('Missing'),
				])->empty(__('<Empty>'))),

			TD::make('created_at', 'Created')
				->render(function ($model) {
					return $model->created_at->toDateString();
				})
				->sort(),
			TD::make('updated_at', 'Last edit')
				->render(function ($model) {
					return $model->updated_at->toDateString();
				})
				->sort(),
		];
    }
}
