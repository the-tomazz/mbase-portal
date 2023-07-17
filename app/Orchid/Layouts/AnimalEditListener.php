<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\SexList;
use App\Models\SpeciesList;
use Illuminate\Support\Facades\App;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\DateTimer;
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
		'animal.died_at_date',
		'animal.died_at_time',
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
					->title(__('Status'))
					->empty(__('<Select>'))
					->required()
					->options([
						Animal::STR_ALIVE => __('Alive'),
						Animal::STR_DEAD => __('Dead'),
					]),

				DateTimer::make('animal.died_at_date')
					->title('Date of death')
					->available([['from' => '01.01.1970', 'to' => date('d.m.Y')]])
					->required()
					->allowInput()
					->format('d.m.Y')
					->canSee(!$isAlive),

				DateTimer::make('animal.died_at_time')
					->title('Time of death')
					->required()
					->enableTime()
					->allowInput()
					->format('H:i')
					->noCalendar()
					->canSee(!$isAlive),

				Input::make('animal.name')
					->title('Animal name')
					->help(__('Input animal name.')),

				Select::make('animal.species_list_id')
					->fromQuery(
						SpeciesList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name'
					)
					->title(__('Species'))
					->empty(__('<Select>'))
					->required()
					->help(__('Please select the species')),

				Select::make('animal.sex_list_id')
					->fromQuery(
						SexList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name'
					)
					->title(__('Sex'))
					->empty(__('<Select>'))
					->required()
					->help(__('Please select the sex')),

				Input::make('animal.description')
					->title('Note'),
			])
		];
	}
}
