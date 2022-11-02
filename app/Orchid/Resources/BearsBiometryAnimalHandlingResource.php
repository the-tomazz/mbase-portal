<?php

namespace App\Orchid\Resources;

use App\Models\BearsList;
use App\Models\Group;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\DateRange;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\TD;

class BearsBiometryAnimalHandlingResource extends Resource
{
	/**
	 * The model the resource corresponds to.
	 *
	 * @var string
	 */
	public static $model = \App\Models\BearsBiometryAnimal::class;

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{

		return [
			Select::make('identifikacija_osebka')
			->fromQuery($this->getListByType('animal_identifier'), "value")
			->title(__('ID Animal'))
			->help('Please select the ID of the individual, if the animal is known.'),

			Select::make('zivalska_vrsta')
				->fromQuery($this->getListByType('species'), "value")
				->title(__('Species'))
				->required()
				->help('Please select species.'),

			Input::make('stevilka_letnega_odvzema_1')
				->title('Number of removal in LUO')
				->help('Please insert number of removal in LUO.'),

			Input::make('stevilka_letnega_odvzema_2')
				->title('Year of removal in LUO')
				->help('Please insert the year of removal in LUO.'),

			Select::make('nacin_odvzema')
				->fromQuery($this->getListByType('way_of_withdrawal'), "value")
				->title(__('Type of removal'))
				->required()
				->help('Please select the type of removal.'),

			Input::make('stevilka_dovoljenja')
				->title('Permit number')
				->help('Please enter permit number.'),

			Input::make('ime_projekta')
				->title('Project title and description; Contact name')
				->help('Please insert the project name and description and provide a contact person.'),

			Select::make('vzrok_izgube')
				->fromQuery($this->getListByType('biometry_loss_reason'), "value")
				->title(__('Type of removal'))
//				->required()
				->help('Please select the reason for death.'),

			Select::make('vzrok_odstranitve')
				->fromQuery($this->getListByType('conflict_animal_removal'), "value")
				->title(__('Conflict animal removal'))
//				->required()
				->help('Please select the reason for conflict removal.'),

			Input::make('translocation_location')
				->title('Receiving country and institutions:')
				->help('Please define the receiving country and provide names of involved institutions (permits, transport etc.).'),

			Input::make('navedi_izgubo') // provjeriti uslove
				->title('Loss reason')
				->help('Please insert the reason for death or describe circumstances.'),

			Input::make('oznaka_telemetrije')
				->title('Ear-tag number or radio-collar identification.')
				->help('Please describe animal-borne markings (ear-tags, collar, microchips, etc.).'),

			DateTimer::make('date')->title('Date'),

			Input::make('mesto_odvzema')
				->title('Geographical location/Local name')
				->help('Please insert geographical location/local place name.'),

			Select::make('tip_mesta')
				->fromQuery($this->getListByType('place_type'), "value")
				->title(__('Place of removal'))
//				->required()
				->help('Please select the place of removal.'),

			Input::make('drugi_tip_mesta')
				->title('Place type')
				->help('Please describe the place of removal.'),

			Select::make('obmocje_medveda')
				->fromQuery($this->getListByType('bear_territory_type'), "value")
				->title(__('Bear presence zone')),
//				->required()
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
//			TD::make('')
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

	private function getListByType($value): \Illuminate\Database\Eloquent\Builder
	{
		return
			BearsList::query()
				->join(
					'bears_list_type',
					function ($join) use ($value) {
						$join->on('bears_list_type.id', '=', 'bears_list.type_id')
						->where('bears_list_type.naziv', '=', $value);
					}
				)->select(['bears_list.id', 'bears_list.value'])
				->orderBy('bears_list.value');
	}
}
