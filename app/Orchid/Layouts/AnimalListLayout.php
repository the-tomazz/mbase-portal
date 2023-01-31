<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\SexList;
use App\Models\SpeciesList;
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
				->render(function (Animal $animal) {
					return Link::make($animal->id)
					->route('platform.animalData.view', $animal);
				})
				->sort(),

			TD::make('name', __('Name'))
				->render(function (Animal $animal) {
					return Link::make($animal->name)
					->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(Input::make()),

			TD::make('status', __('Status'))
				->render(function (Animal $animal) {
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
						return $status == Animal::STR_ALIVE ? __('Alive') : __('Dead');
					}),

			TD::make('died_at', __('Date of death'))
				->render(function ($model) {
					return $model->died_at ? $model->died_at->toDateString() : '';
				})
				->sort(),

			TD::make('species_list_id', __('Species'))
				->render(function (Animal $animal) {
					return Link::make($animal->species_list->name)
					->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(
					Select::make()
						->fromModel(SpeciesList::class, 'name')
						->empty(__('<Select>')))
						->filterValue(function ($species_list_id) {
								return SpeciesList::find($species_list_id)->name;
				}),

			TD::make('hunting_management_area', __('Hunting-management area (LUO)'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						$animalHandlingRender = Link::make($animalHandling->hunting_management_area)
							->route('platform.animalHandling.view', [ $animalHandling ]);

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('hunting_ground', __('Hunting ground'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						$animalHandlingRender = Link::make($animalHandling->hunting_ground)
							->route('platform.animalHandling.view', [ $animalHandling ]);

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('sex_list_id', __('Sex'))
				->render(function (Animal $animal) {
					return Link::make($animal->sex_list->name)
					->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(
					Select::make()->fromModel(SexList::class, 'name')
					->empty(__('<Select>')))
					->filterValue(function ($sex_list_id) {
						return SexList::find($sex_list_id)->name;
					}),

			TD::make('animal_handling', __('Animal handling date'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						$animalHandlingRender = Link::make($animalHandling->animal_handling_date->toDateString())
							->route('platform.animalHandling.view', [ $animalHandling ]);

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('animal_status_on_handling', __('Animal status on handling'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						$animalHandlingRender = Link::make($animal->statusString())
							->route('platform.animalHandling.view', [ $animalHandling ]);

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('age', __('Visual age estimate'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						if ($animalHandling->bearsBiometryData) {
							$animalHandlingRender = Link::make($animalHandling->bearsBiometryData->age)
								->route('platform.biometryData.view', [ $animalHandling->bearsBiometryData ]);
						} else {
							$animalHandlingRender = Link::make(__('NA'))
								->route('platform.biometryData.edit', [ $animalHandling ]);
						}

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('masa_bruto', __('Gross body mass'))
				->render(function (Animal $animal) {
					$animalHandlingsRender = '';
					foreach ($animal->bearsBiometryAnimalHandlings()->get() as $animalHandling) {
						if ($animalHandling->bearsBiometryData) {
							$animalHandlingRender = Link::make($animalHandling->bearsBiometryData->masa_bruto)
								->route('platform.biometryData.view', [ $animalHandling->bearsBiometryData ]);
						} else {
							$animalHandlingRender = Link::make(__('NA'))
								->route('platform.biometryData.edit', [ $animalHandling ]);
						}

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('created_at', __('Created at'))
				->render(function ($model) {
					return $model->created_at->toDateString();
				})
				->sort(),

			TD::make('updated_at', __('Updated at'))
				->render(function ($model) {
					return $model->updated_at->toDateString();
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
