<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BiometryLossReasonList;
use App\Models\ConflictAnimalRemovalList;
use App\Models\SexList;
use App\Models\SpeciesList;
use App\Models\WayOfWithdrawalList;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Layouts\Listener;

class BearsBiometryAnimalHandlingAnimalListener extends Listener
{
	/**
	 * List of field names for which values will be joined with targets' upon trigger.
	 *
	 * @var string[]
	 */
	protected $extraVars = [];

	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryAnimalHandling.original_animal_id',
		'bearsBiometryAnimalHandling.animal_id',
		'bearsBiometryAnimalHandling.animal_status',
		'bearsBiometryAnimalHandling.animal_died_at_date',
		'bearsBiometryAnimalHandling.animal_died_at_time',
		'bearsBiometryAnimalHandling.animal_name',
		'bearsBiometryAnimalHandling.animal_species_list_id',
		'bearsBiometryAnimalHandling.animal_sex_list_id',
		'bearsBiometryAnimalHandling.animal_description',
		'bearsBiometryAnimalHandling.animal_handling_date_date',
		'bearsBiometryAnimalHandling.animal_handling_date_time',
		'bearsBiometryAnimalHandling.way_of_withdrawal_list_id',
		'bearsBiometryAnimalHandling.licence_number',
		'bearsBiometryAnimalHandling.conflict_animal_removal_list_id',
		'bearsBiometryAnimalHandling.biometry_loss_reason_list_id',
		'bearsBiometryAnimalHandling.biometry_loss_reason_description',
		'bearsBiometryAnimalHandling.project_name',
		'bearsBiometryAnimalHandling.receiving_country',
		'bearsBiometryAnimalHandling.n_number_of_removal_in_the_hunting_administrative_area',
		'bearsBiometryAnimalHandling.y_number_of_removal_in_the_hunting_administrative_area',
		'bearsBiometryAnimalHandling.telemetry_uid'
	];

	/**
	 * What screen method should be called
	 * as a source for an asynchronous request.
	 *
	 * The name of the method must
	 * begin with the prefix "async"
	 *
	 * @var string
	 */
	protected $asyncMethod = 'asyncUpdateAnimalHandlingAnimalListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		if ($this->query) {
			$animalIsKnown = $this->query->get('bearsBiometryAnimalHandling.original_animal_id') != null;
			$animalIsSelected = $this->query->get('bearsBiometryAnimalHandling.animal_id') != null;

			$animalIsAlive = $this->query->get('bearsBiometryAnimalHandling.animal_status') == Animal::STR_ALIVE;

			$regularCullSelected = $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::REGULAR_CULL;
			$conflictAnimalRemovalSelected = $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::CONFLICT_ANIMAL_REMOVAL;
			$lossSelected = $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::LOSS;
			$lossReasonOtherSelected = $this->query->get('bearsBiometryAnimalHandling.biometry_loss_reason_list_id') == BiometryLossReasonList::OTHER;
			$liveCaptureSelected = $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::LIVE_CAPTURE;
			$translocationOutOfPopulationSelected = $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::TRANSLOCATION_OUT_OF_POPULATION;
		} else {
			$animalIsKnown = false;
			$animalIsSelected = false;

			$animalIsAlive = false;

			$regularCullSelected = false;
			$conflictAnimalRemovalSelected = false;
			$lossSelected = false;
			$lossReasonOtherSelected = false;
			$liveCaptureSelected = false;
			$translocationOutOfPopulationSelected = false;
		}

		$animalStatusSubset = $animalIsAlive ? WayOfWithdrawalList::SHOWN_ON_ANIMAL_STATUS_ALIVE : WayOfWithdrawalList::SHOWN_ON_ANIMAL_STATUS_DEAD;

		$animalSelectQuery = $animalIsKnown
			? Animal::whereRaw('true')
			: Animal::where('status', '=', 'alive'); // we can rehandle only live animals

		return [
			Layout::rows([
				Select::make('bearsBiometryAnimalHandling.original_animal_id')
					->fromQuery($animalSelectQuery, 'name')
					->title(__('Animal'))
					->disabled($animalIsKnown)
					->empty(__('<Unknown animal>'))
					->canSee($animalIsKnown),

				Select::make('bearsBiometryAnimalHandling.animal_id')
					->fromQuery($animalSelectQuery, 'name')
					->title(__('Animal'))
					->help($animalIsAlive
						? __('Please select the ID of the individual, if the animal is known.')
						: __('If the individual hasn’t been caught before, leave the value “Unknown animal” and an automatic identification number will be assigned to this animal. If the individual has been previously handled and marked already, then choose its name from the drop-down list.'))
					->empty(__('<Unknown animal>'))
					->canSee(!$animalIsKnown),

				Select::make('bearsBiometryAnimalHandling.animal_status')
					->title('Status')
					->empty(__('<Select>'))
					->required()
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),

				Input::make('bearsBiometryAnimalHandling.animal_name')
					->title('Animal name')
					->required($animalIsAlive)
					->help($animalIsAlive
						? __('Assign a new name to the animal.')
						: __('In case this animal is known for other reasons, like monitoring, you can assign it a name.'))
					->canSee(!$animalIsKnown && !$animalIsSelected),

				Select::make('bearsBiometryAnimalHandling.animal_species_list_id')
					->fromQuery(SpeciesList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->required()
					->empty(__('<Select>'))
					->title(__('Species'))
					->help(__('Please select the species'))
					->disabled($animalIsKnown || $animalIsSelected),

				Select::make('bearsBiometryAnimalHandling.animal_sex_list_id')
					->fromQuery(SexList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->required()
					->empty(__('<Select>'))
					->title(__('Sex'))
					->help(__('Please select the sex'))
					->disabled($animalIsKnown || $animalIsSelected),

				Input::make('bearsBiometryAnimalHandling.animal_description')
					->disabled($animalIsKnown || $animalIsSelected)
					->title('Note'),

			])->title(__('Animal')),

			Layout::rows([
				Group::make([
					DateTimer::make('bearsBiometryAnimalHandling.animal_died_at_date')
						->title('Date of death')
						->canSee(!$animalIsAlive)
						->allowInput()
						->disabled(false && $animalIsKnown)
						->available([['from' => '01.01.1970', 'to' => date('d.m.Y')]])
						->format('d.m.Y'),

					DateTimer::make('bearsBiometryAnimalHandling.animal_died_at_time')
						->title('Time of death')
						->canSee(!$animalIsAlive)
						->allowInput()
						->format('H:i')
						->noCalendar()
						->enableTime()
						->disabled(false && $animalIsKnown),
				]),

				Group::make([
					DateTimer::make('bearsBiometryAnimalHandling.animal_handling_date_date')
						->title('Date of handling')
						->required()
						->allowInput()
						->format('d.m.Y')
						->available([['from' => '01.01.1970', 'to' => date('d.m.Y')]]),

					DateTimer::make('bearsBiometryAnimalHandling.animal_handling_date_time')
						->title('Time of handling')
						->required()
						->allowInput()
						->format('H:i')
						->noCalendar()
						->enableTime(),
				]),
			])->title(__('Date and time')),

			Layout::rows([
				Group::make([
					Select::make('bearsBiometryAnimalHandling.way_of_withdrawal_list_id')
						->fromQuery(
							WayOfWithdrawalList::where('status', '=', BaseList::STR_ACTIVE)
								->whereIn('id', $animalStatusSubset),
							'name'
						)
						->title(__('Way of withdrawal'))
						->required()
						->empty(__('<Select>'))
						->help(__('Select the way of withdrawal')),

					Input::make('bearsBiometryAnimalHandling.licence_number')
						->title(__('Permit number'))
						->required()
						->help(__('Please enter the permit number'))
						->canSee($regularCullSelected || $conflictAnimalRemovalSelected),

					Select::make('bearsBiometryAnimalHandling.conflict_animal_removal_list_id')
						->fromQuery(ConflictAnimalRemovalList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Type of conflict animal removal'))
						->empty(__('<Select>'))
						->required()
						->help(__('Please select the type conflict animal removal'))
						->canSee($conflictAnimalRemovalSelected),

					Select::make('bearsBiometryAnimalHandling.biometry_loss_reason_list_id')
						->fromQuery(BiometryLossReasonList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Loss reason'))
						->empty(__('<Select>'))
						->required()
						->help(__('Please select the reason for death'))
						->canSee($lossSelected),

					Input::make('bearsBiometryAnimalHandling.biometry_loss_reason_description')
						->title(__('Loss reason description'))
						->help(__('Please insert the reason for death or describe circumstances'))
						->required($lossReasonOtherSelected)
						->canSee($lossSelected && $lossReasonOtherSelected),

					Input::make('bearsBiometryAnimalHandling.project_name')
						->title(__('Project title and description; Contact name'))
						->help(__('Please insert the project name and description and provide a contact person'))
						->required($liveCaptureSelected)
						->canSee($liveCaptureSelected),

					Input::make('bearsBiometryAnimalHandling.receiving_country')
						->title(__('Receiving country and institutions'))
						->help(__('Please define the receiving country and provide names of involved institutions (permits, transport etc.)'))
						->required($translocationOutOfPopulationSelected)
						->canSee($translocationOutOfPopulationSelected),
				]),

				Label::make('')
				  ->title(__('Number and the year of removal in hunting administrative area'))
				  ->canSee(!$animalIsAlive),

				Group::make([
					Input::make('bearsBiometryAnimalHandling.n_number_of_removal_in_the_hunting_administrative_area')
						->mask('9[99]')
						->help(__('Number of removal (1-999)'))
						->canSee(!$animalIsAlive),

					Input::make('bearsBiometryAnimalHandling.y_number_of_removal_in_the_hunting_administrative_area')
						->mask('9999')
						->help(__('Year of removal (2015-2099)'))
						->canSee(!$animalIsAlive),
				]),

				Input::make('bearsBiometryAnimalHandling.telemetry_uid')
					->title(__('Ear-tag number or radio-collar (telemetry) identification'))
					->help(__('Please describe animal-borne markings (ear-tags, collar, microchips, etc.)'))
					->canSee($animalIsAlive)
			]),
		];
	}
}
