<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\AnimalListView;
use App\Models\Base\BaseList;
use App\Models\SexList;
use App\Models\SpeciesList;
use App\Models\User;
use App\Models\WayOfWithdrawalList;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class AnimalListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'animals';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('id', __('Animal ID'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->id)
						->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(Input::make()),

			TD::make('name', __('Animal name'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->name)
						->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(Input::make()),

			TD::make('species_list_name->' . App::getLocale(), __("Species"))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->species_list_name)
						->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(
					Select::make()->fromQuery(
						SpeciesList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name', 'name'
					)
					->empty(__('<Select>'))
				)
					->filterValue(function ($species_list_name) {
							return $species_list_name;
					}),

			TD::make('status', __('Status'))
				->render(function (AnimalListView $animal) {
					return $animal->renderStatus();
				})
				->sort()
				->filter(
					Select::make()->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])
					->empty(__('<Select>')))
					->filterValue(function ($status) {
						return $status == AnimalListView::STR_ALIVE ? __('Alive') : __('Dead');
					}),

			TD::make('died_at', __('Date of death'))
				->render(function (AnimalListView $animal) {
					return $animal->died_at ? $animal->died_at->format('d.m.Y') : '';
				})
				->sort(),

			TD::make('animal_handling_date', __('Animal handling date'))
				->render(function (AnimalListView $animal) {
					if (!$animal->animal_handling_date) {
						return;
					}

					return Link::make($animal->animal_handling_date->format('d.m.Y H:i'))
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort(),

			TD::make('animal_handling_count', __('Animal handling count'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->animal_handling_count)
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort()
				->filter(Input::make()),

			TD::make('way_of_withdrawal_list_name->' . App::getLocale(), __("Way of withdrawal"))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->way_of_withdrawal_list_name)
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort()
				->filter(
					Select::make()->fromQuery(
						WayOfWithdrawalList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name', 'name'
					)
					->empty(__('<Select>'))
				)
				->filterValue(function ($way_of_withdrawal_list_name) {
					return $way_of_withdrawal_list_name;
				}),

			TD::make('hunting_management_area', __('Hunting-management area (LUO)'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->hunting_management_area)
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort()
				->filter(Input::make()),

			TD::make('hunting_ground', __('Hunting ground'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->hunting_ground)
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort()
				->filter(Input::make()),

			TD::make('sex_list_name->' . App::getLocale(), __("Sex"))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->sex_list_name)
						->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(
					Select::make()->fromQuery(
						SexList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name', 'name'
					)->empty(__('<Select>'))
				)
				->filterValue(function ($sex_list_name) {
					return $sex_list_name;
				}),

			TD::make('age', __('Visual age estimate'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->age)
						->route('platform.animalHandling.view', $animal->animal_handling_id);
				})
				->sort()
				->filter(Input::make()),

			TD::make('masa_bruto', __('Gross body mass'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->masa_bruto)
						->route('platform.animalHandling.view', [ $animal->animal_handling_id ]);
				})
				->sort()
				->filter(Input::make()),

			TD::make('users_name', __('User'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->users_name)
						->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(Input::make()),

			TD::make('created_at', __('Created'))
				->render(function (AnimalListView $animal) {
					return $animal->created_at->format('d.m.Y H:i');
				})
				->sort(),

			TD::make('updated_at', __('Last edit'))
				->render(function ($model) {
					return $model->updated_at->format('d.m.Y H:i');
				})
				->sort(),
		];
    }

	/**
	 * Get the number of models to return per page
	 *
	 * @return int
	 */
	public static function perPage(): int
	{
		return 30;
	}
}
