<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\AnimalListView;
use App\Models\Base\BaseList;
use App\Models\SexList;
use App\Models\SpeciesList;
use App\Models\User;
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
				->sort(),

			TD::make('name', __('Name'))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->name)
					->route('platform.animalData.view', $animal);
				})
				->sort()
				->filter(Input::make()),

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
				->render(function ($model) {
					return $model->died_at ? $model->died_at->toDateString() : '';
				})
				->sort(),

			TD::make('species_list_name', __("Species"))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->species_list_name)
						->route('platform.animalData.view', [ $animal->id ]);
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

			TD::make('hunting_management_area', __('Hunting-management area (LUO)'))
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
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
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
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

			TD::make('sex_list_name->' . App::getLocale(), __("Sex"))
				->render(function (AnimalListView $animal) {
					return Link::make($animal->sex_list_name)
						->route('platform.animalData.view', [ $animal->id ]);
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

			TD::make('animal_handling', __('Animal handling date'))
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
						$animalHandlingRender = Link::make($animalHandling->animal_handling_date->	format('d.m.Y H:i'))
							->route('platform.animalHandling.view', [ $animalHandling ]);

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

			TD::make('data_entered_by_user_id', __('User'))
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
						$animalHandlingRender = Link::make(User::find($animalHandling->data_entered_by_user_id)->name)
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
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
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

			TD::make('animal_status_on_handling', __('Animal status on handling'))
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
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
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
						if ($animalHandling->bearsBiometryData) {
							$animalHandlingRender = Link::make($animalHandling->bearsBiometryData->age)
								->route('platform.biometryData.view', [ $animalHandling->bearsBiometryData ]);
						} else {
							$animalHandlingRender = Link::make(__('NA'))
								->route('platform.biometryData.add', [ $animalHandling ]);
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
				->render(function (AnimalListView $animal) {
					$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
					$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

					$animalHandlingsRender = '';
					$animalHandlings = $animal->bearsBiometryAnimalHandlings()
						->where(function ($query) use ($from, $to) {
							$query->whereDate('animal_handling_date', '>=', $from);
							$query->whereDate('animal_handling_date', '<=', $to);
						})
						->get();

					foreach ($animalHandlings as $animalHandling) {
						if ($animalHandling->bearsBiometryData) {
							$animalHandlingRender = Link::make($animalHandling->bearsBiometryData->masa_bruto)
								->route('platform.biometryData.view', [ $animalHandling->bearsBiometryData ]);
						} else {
							$animalHandlingRender = Link::make(__('NA'))
								->route('platform.biometryData.add', [ $animalHandling ]);
						}

						if ($animalHandlingsRender == '') {
							$animalHandlingsRender .= $animalHandlingRender;
						} else {
							$animalHandlingsRender .= '<br>' . $animalHandlingRender;
						}
					}
					return $animalHandlingsRender;
				}),

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
