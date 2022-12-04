<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\SexList;
use App\Models\SpeciesList;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class AnimalEditListener extends Listener
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
		'animal.id',
		'animal.status',
        'animal.previous_status',
		'animal.died_at',
		'animal.name',
		'animal.species_list_id',
		'animal.sex_list_id',
		'animal.description'
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
    protected $asyncMethod = 'asyncUpdateAnimalListenerData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
		$isAlive = null !== $this->query->get('animal.status') ? $this->query->get('animal.status') == Animal::STR_ALIVE : false;

        return [
			Layout::rows([
				Input::make('animal.id')
					->title(__('Animal ID'))
					->disabled(),

				Select::make('animal.status')
					->title('Status')
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),

				Select::make('animal.previous_status')
					->title('Previous status')
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					])
					->canSee(!$isAlive),

				Input::make('animal.died_at')
					->title('Date and time of death')
					->type('datetime-local')
					->canSee(!$isAlive),

				Input::make('animal.name')
					->title('Name'),

				Select::make('animal.species_list_id')
					->fromModel(SpeciesList::class, 'name')
					->title(__('Species'))
					->help(__('Please select the species')),

				Select::make('animal.sex_list_id')
					->fromModel(SexList::class, 'name')
					->title(__('Sex'))
					->help(__('Please select the sex')),

				Input::make('animal.description')
					->title('Note'),
            ])// ->title($this->query->get('animal.id') ? __('Animal ID: ') . $this->query->get('animal.id') : ''),
		];
    }
}
