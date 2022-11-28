<?php

namespace App\Orchid\Layouts;

use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Map;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingGeoLocationListener extends Listener
{
    /**
     * List of field names for which values will be listened.
     *
     * @var string[]
     */
    protected $targets = [
		'bearsBiometryAnimalHandling.geo_location.lat',
		'bearsBiometryAnimalHandling.geo_location.lng',
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
    protected $asyncMethod = 'asyncUpdateAnimalHandlingGeoLocationListenerData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
		if (isset($this->query)) Log::debug(['BearsBiometryAnimalHandlingGeoLocationListener', $this->query->get('bearsBiometryAnimalHandling')]);

		return [
			Layout::rows([
                Map::make('bearsBiometryAnimalHandling.geo_location')
					->title(__('Location'))
					->help(__(''))
					->zoom(7),

				Label::make('bearsBiometryAnimalHandling.hunting_management_area')
					->title(__('Hunting-management area (LUO):')),

				Label::make('bearsBiometryAnimalHandling.hunting_ground')
					->title(__('Hunting ground'))
            ]),
		];
    }
}
