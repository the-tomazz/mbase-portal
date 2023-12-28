<?php

namespace App\Orchid\Layouts;

use App\Models\Group as ModelsGroup;
use App\Models\GroupType;
use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingHunterFinderSwitchListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryAnimalHandling.unknown_hunter_finder',
		'bearsBiometryAnimalHandling.hunter_finder_name_and_surname',
		'bearsBiometryAnimalHandling.hunter_finder_country_id',
		'bearsBiometryAnimalHandling.witness_accompanying_person_name_and_surname',
		'bearsBiometryAnimalHandling.taxidermist_name_and_surname'
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
	protected $asyncMethod = 'asyncUpdateAnimalHandlingHunterFinderSwitchListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		$canSee = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.unknown_hunter_finder') == 0 : false;

		return [
			Layout::rows([
				// HUNTER/FINDER GROUP START
				Switcher::make('bearsBiometryAnimalHandling.unknown_hunter_finder')
					->sendTrueOrFalse()
					->title(__('Unknown Hunter/Finder')),

				Group::make([
					Input::make('bearsBiometryAnimalHandling.hunter_finder_name_and_surname')
						->title(__('Hunter/Finder name and surname'))
						->help(__('Please insert the name and surname of the hunter/finder'))
						->canSee($canSee),

					Select::make('bearsBiometryAnimalHandling.hunter_finder_country_id')
						->fromQuery(ModelsGroup::where('group_type_id', '=', GroupType::COUNTRIES)->orderBy('name->' .  App::getLocale()), 'name')
						->title(__('Country'))
						->empty(__('<Select>'))
						->help(__('Please select the country'))
						->canSee($canSee),
					// HUNTER/FINDER GROUP START END
				])->autoWidth(),

				Input::make('bearsBiometryAnimalHandling.witness_accompanying_person_name_and_surname')
					->title(__('Witness/Accompanying person name and surname'))
					->help(__('Please insert the name and surname of the Witness/Accompanying person')),

				Input::make('bearsBiometryAnimalHandling.taxidermist_name_and_surname')
					->title(__('Taxidermist name and surname'))
					->help(__('Please insert the name and surname of the taxidermist')),

			]),
		];
	}
}
