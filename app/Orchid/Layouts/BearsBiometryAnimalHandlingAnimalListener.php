<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
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
        'bearsBiometryAnimalHandling.animal_previous_status',
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
			// Log::debug(['BearsBiometryAnimalHandlingAnimalListener', $this->query->get('bearsBiometryAnimalHandling')]);
			$existingAnimalSelected = null !== $this->query->get('bearsBiometryAnimalHandling.animal_id') ? $this->query->get('bearsBiometryAnimalHandling.animal_id') : false;
			$isAlive = null !== $this->query->get('bearsBiometryAnimalHandling.animal_status') ? $this->query->get('bearsBiometryAnimalHandling.animal_status') == Animal::STR_ALIVE : false;
			$animalIDAvailable = !is_null($this->query->get('bearsBiometryAnimalHandling.animal_id'));
		} else {
			$existingAnimalSelected = false;
			$isAlive = Auth::user()->defaultVisualisationAnimalStatus() == Animal::STR_ALIVE;
			$animalIDAvailable = false;
		}

        return [
			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.animal_id')
					->title('Animal ID')
					->disabled()
					->canSee($animalIDAvailable),

				Select::make('bearsBiometryAnimalHandling.animal_status')
					->title('Status')
					->required()
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])
					->disabled(!$isAlive && $existingAnimalSelected),

				Select::make('bearsBiometryAnimalHandling.animal_id')
					->fromQuery(Animal::where('status', '=', Animal::STR_ALIVE), 'name')
					->title(__('Animal'))
					->help(__('Please select the ID of the individual, if the animal is known.'))
					->empty(__('<New animal>'))
					->disabled($existingAnimalSelected),

				Input::make('bearsBiometryAnimalHandling.animal_name')
					->title('Name')
					->required()
					->disabled($existingAnimalSelected),

				Select::make('bearsBiometryAnimalHandling.animal_species_list_id')
					->fromModel(SpeciesList::class, 'name')
					->required()
					->title(__('Species'))
					->help(__('Please select the species'))
					->disabled($existingAnimalSelected),

				Select::make('bearsBiometryAnimalHandling.animal_sex_list_id')
					->fromModel(SexList::class, 'name')
					->required()
					->value(SexList::NEUTRAL_SEX_ID)
					->title(__('Sex'))
					->help(__('Please select the sex'))
					->disabled($existingAnimalSelected),

				Input::make('bearsBiometryAnimalHandling.animal_description')
					->title('Note')
					->disabled($existingAnimalSelected),
			])
		];
    }
}
