<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BiometryLossReasonList;
use App\Models\ConflictAnimalRemovalList;
use App\Models\WayOfWithdrawalList;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class WayOfRemovalListener extends Listener
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
		'bearsBiometryAnimalHandling.animal_status',
		'bearsBiometryAnimalHandling.animal_died_at',
		'bearsBiometryAnimalHandling.animal_handling_date',
		'bearsBiometryAnimalHandling.way_of_withdrawal_list_id',
		'bearsBiometryAnimalHandling.licence_number',
		'bearsBiometryAnimalHandling.conflict_animal_removal_list_id',
		'bearsBiometryAnimalHandling.biometry_loss_reason_list_id',
		'bearsBiometryAnimalHandling.biometry_loss_reason_description',
		'bearsBiometryAnimalHandling.project_name',
		'bearsBiometryAnimalHandling.receiving_country',
		'bearsBiometryAnimalHandling.number_of_removal_in_the_hunting_administrative_area'
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
    protected $asyncMethod = 'asyncUpdateAnimalHandlingWayOfRemovalListenerData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
		$regularCullSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::REGULAR_CULL : false;
		$conflictAnimalRemovalSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::CONFLICT_ANIMAL_REMOVAL : false;
		$lossSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::LOSS : false;
		$lossReasonOtherSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.biometry_loss_reason_list_id') == BiometryLossReasonList::OTHER : false;
		$liveCaptureSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::LIVE_CAPTURE : false;
		$translocationOutOfPopulationSelected = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.way_of_withdrawal_list_id') == WayOfWithdrawalList::TRANSLOCATION_OUT_OF_POPULATION : false;
		$animalStatusAlive = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.animal_status') == Animal::STR_ALIVE : false;
		$animalStatusSubset = $animalStatusAlive ? WayOfWithdrawalList::SHOWN_ON_ANIMAL_STATUS_ALIVE : WayOfWithdrawalList::SHOWN_ON_ANIMAL_STATUS_DEAD;

        return [
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

				Input::make('bearsBiometryAnimalHandling.number_of_removal_in_the_hunting_administrative_area')
					->mask('999-9999')
					->title(__('Number and the year of removal in hunting administrative area'))
					->help(__('Please insert number and the year of removal in hunting administrative area'))
					->canSee(!$animalStatusAlive),
			])
		];
    }
}
