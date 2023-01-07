<?php

namespace App\Orchid\Layouts;

use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Map;
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
		return [
			Layout::rows([
				Map::make('bearsBiometryAnimalHandling.geo_location')
					->title(__('Location'))
					->required()
					->help(__(''))
					->zoom(7),

				Input::make('bearsBiometryAnimalHandling.hunting_management_area')
					// ->disabled()
					->required()
					->title(__('Hunting-management area (LUO)')),

				Input::make('bearsBiometryAnimalHandling.hunting_ground')
					// ->disabled()
					->required()
					->title(__('Hunting ground'))
			]),
		];
	}
}
