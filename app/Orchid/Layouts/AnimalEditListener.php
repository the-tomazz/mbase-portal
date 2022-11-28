<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
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
		'animal.status',
        'animal.previous_status',
		'animal.died_at',
		'animal.name',
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

				Input::make('animal.description')
					->title('Note'),
            ]),
		];
    }
}
