<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\AnimalHandlingListView;
use App\Models\Base\BaseList;
use App\Models\PlaceTypeList;
use App\Models\SexList;
use App\Models\SpeciesList;
use Illuminate\Support\Facades\App;
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
			TD::make('id', __('ID'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->id)
						->route('platform.animalHandling.view', [ $animalHandlingListView ]);
				})
				->sort(),

			TD::make('animal_handling_date', __('Handling date'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_handling_date->toDateString())
						->route('platform.animalHandling.view', [ $animalHandlingListView ]);
				})
				->sort(),

			TD::make('animal_id', __('Animal ID'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_id)
						->route('platform.animalData.view', [ $animalHandlingListView->animal_id ]);
				})
				->sort(),

			TD::make('animal_name', __("Name"))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_name)
						->route('platform.animalData.view', [ $animalHandlingListView->animal_id ]);
				})
				->sort()
				->filter(Input::make()),

			TD::make('species_list_id', __("Species"))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->species_list->name)
						->route('platform.animalData.view', [ $animalHandlingListView->animal_id ]);
				})
				->sort()
				->filter(
					Select::make()->fromQuery(
						SpeciesList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name'
					)
					->empty(__('<Select>')))
					->filterValue(function ($species_list_id) {
							return SpeciesList::find($species_list_id)->name;
				}),

			TD::make('sex_list_id', __("Sex"))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->sex_list->name)
						->route('platform.animalData.view', [ $animalHandlingListView->animal_id ]);
				})
				->sort()
				->filter(
					Select::make()->fromQuery(
						SexList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name'
					)->empty(__('<Select>'))
				)
				->filterValue(function ($sex_list_id) {
							return SexList::find($sex_list_id)->name;
				}),

			TD::make('animal_status', __('Status'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->animal->renderStatus();
				})
				->sort()
				->filter(
					Select::make()->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])
						->empty(__('<Select>')))
						->filterValue(function ($status) {
							return $status == Animal::STR_ALIVE ? __('Alive') : __('Dead');
					}),

			TD::make('animal_status_on_handling', __('Status on handling'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->animal_status_on_handling == Animal::STR_ALIVE
						? '<i class="text-success">●</i> ' . __('Alive')
						: '<i class="text-danger">●</i> ' . __('Dead');
				})
				->sort()
				->filter(
					Select::make()->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])->empty(__('<Select>')))
					->filterValue(function ($status) {
						return $status == Animal::STR_ALIVE ? __('Alive') : __('Dead');
					}),

			TD::make('animal_died_at', __('Died at'))
				->render(function ($model) {
					return $model->animal_died_at ? $model->animal_died_at->toDateString() : '';
				})
				->sort(),

			TD::make('bears_biometry_data_status', __('Biometry data'))
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->bears_biometry_data_status == AnimalHandlingListView::STR_EXISTS
						? Link::make(__('Exists'))
							->route('platform.biometryData.view', [ $animalHandlingListView->bears_biometry_data_id ])
						: Link::make(__('Missing'))
							->route('platform.biometryData.edit', [ $animalHandlingListView ]);
				})
				->sort()
				->filter(
					Select::make()->options([
						AnimalHandlingListView::STR_EXISTS => __('Exists'),
						AnimalHandlingListView::STR_MISSING => __('Missing'),
					])
					->empty(__('<Select>')))
					->filterValue(function ($status) {
						return $status == AnimalHandlingListView::STR_EXISTS ? __('Exists') : __('Missing');
					}),

			TD::make('created_at', __('Created'))
				->render(function ($model) {
					return $model->created_at->toDateString();
				})
				->sort(),

			TD::make('updated_at', __('Last edit'))
				->render(function ($model) {
					return $model->updated_at->toDateString();
				})
				->sort(),
		];
	}
}
