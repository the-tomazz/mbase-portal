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
		'animal.is_alive',
        'animal.value',
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
		if (isset($this->query)) Log::debug(['animal', $this->query]);
		$canSee = null !== $this->query->get('animal.is_alive') ? $this->query->get('animal.is_alive') : false;

        return [
			Layout::rows([
				Select::make('animal.status')
					->title('Status')
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),

				Select::make('animal.previous_status')
					->title('Status')
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),


				Select::make('animal.died_at')
					->title('Date and time of death')
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),

				Input::make('animal.name')
					->title('Name')
					->canSee($canSee),

				Input::make('animal.description')
					->title('Note'),
            ]),
		];
    }
}
