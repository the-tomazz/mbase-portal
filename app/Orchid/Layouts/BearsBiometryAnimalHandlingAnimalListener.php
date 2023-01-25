<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\SexList;
use App\Models\SpeciesList;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
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
		'bearsBiometryAnimalHandling.animal_id',
		'bearsBiometryAnimalHandling.animal_status',
		'bearsBiometryAnimalHandling.animal_died_at',
		'bearsBiometryAnimalHandling.animal_name',
		'bearsBiometryAnimalHandling.animal_species_list_id',
		'bearsBiometryAnimalHandling.animal_sex_list_id',
		'bearsBiometryAnimalHandling.animal_description'
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
		if (isset($this->query)) {
			$existingAnimalSelected = null !== $this->query->get('bearsBiometryAnimalHandling.animal_id') ? $this->query->get('bearsBiometryAnimalHandling.animal_id') : false;
			$isAlive = null !== $this->query->get('bearsBiometryAnimalHandling.animal_status') ? $this->query->get('bearsBiometryAnimalHandling.animal_status') == Animal::STR_ALIVE : false;
			$animalIDAvailable = !is_null($this->query->get('bearsBiometryAnimalHandling.animal_id'));
		} else {
			$existingAnimalSelected = false;
			$isAlive = Auth::user()->defaultVisualisationAnimalStatus() == Animal::STR_ALIVE;
			$animalIDAvailable = false;
		}

		if ($animalIDAvailable) {
			$animalEntityId = $this->query->get('bearsBiometryAnimalHandling.animal_id');
			$animalEntity = Animal::find($animalEntityId);
			$animalInDatabaseIsAlive = $animalEntity->status == Animal::STR_ALIVE;
		}

        return [
			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.animal_id')
					->title('Animal ID')
					->readonly()
					->canSee($animalIDAvailable),

				Select::make('bearsBiometryAnimalHandling.animal_status')
					->title('Status')
					->empty(__('<Select>'))
					->required()
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])
					->disabled($animalIDAvailable && !$animalInDatabaseIsAlive),

				Select::make('bearsBiometryAnimalHandling.animal_id')
					->fromQuery(Animal::where('status', '=', Animal::STR_ALIVE), 'name')
					->title(__('Animal'))
					->help(__('Please select the ID of the individual, if the animal is known.'))
					->empty(__('<New animal>'))
					->disabled(!$isAlive || $animalIDAvailable),

				Input::make('bearsBiometryAnimalHandling.animal_name')
					->title('Name')
					->required($isAlive)
					->disabled($existingAnimalSelected)
					->canSee($isAlive && !$existingAnimalSelected),

				Select::make('bearsBiometryAnimalHandling.animal_species_list_id')
					->fromQuery(SpeciesList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->required()
					->empty(__('<Select>'))
					->title(__('Species'))
					->help(__('Please select the species'))
					->disabled($existingAnimalSelected),

				Select::make('bearsBiometryAnimalHandling.animal_sex_list_id')
					->fromQuery(SexList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->required()
					->empty(__('<Select>'))
					->value(SexList::NEUTRAL_SEX_ID)
					->title(__('Sex'))
					->help(__('Please select the sex'))
					->disabled($existingAnimalSelected),

				Input::make('bearsBiometryAnimalHandling.animal_description')
					->title('Note')
					->disabled($existingAnimalSelected),
			])->title(__('Animal')),

			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.animal_handling_date')
					->required()
					->type('datetime-local')
					->title(__('Date and time of removal / handling')),

				// Date and time of biometry measurements start
				Input::make('bearsBiometryAnimalHandling.date_and_time_of_biometry_measurements')
					->type('datetime-local')
					->title(__('Date and time of biometry measurements')),

			])->title(__('Date and time'))
		];
    }
}
