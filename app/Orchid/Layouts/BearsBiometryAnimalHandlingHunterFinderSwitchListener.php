<?php

namespace App\Orchid\Layouts;

use App\Models\PlaceTypeList;
use App\Models\User;
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
        'bearsBiometryAnimalHandling.hunter_finder_name',
		'bearsBiometryAnimalHandling.hunter_finder_surname'
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
		if (isset($this->query)) Log::debug(['unknown_hunter_finder', $this->query->get('bearsBiometryAnimalHandling.unknown_hunter_finder')]);
		$canSee = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.unknown_hunter_finder') == 0 : false;

		return [
			Layout::rows([
                // HUNTER/FINDER GROUP START
				Switcher::make('bearsBiometryAnimalHandling.unknown_hunter_finder')
					->sendTrueOrFalse()
					->title(__('Unknown Hunder/Finder')),

				Input::make('bearsBiometryAnimalHandling.hunter_finder_name')
					->title(__('Hunter/Finder name'))
					->help(__('Please insert the name of the hunter/finder'))
					->canSee($canSee),

				Input::make('bearsBiometryAnimalHandling.hunter_finder_surname')
					->title(__('Hunter/Finder surname'))
					->help(__('Please insert the surname of the hunter/finder'))
					->canSee($canSee),
				// HUNTER/FINDER GROUP START END
            ]),
		];
    }
}
