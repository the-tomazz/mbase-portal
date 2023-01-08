<?php

namespace App\Orchid\Layouts;

use App\Models\BearsBiometryAnimalHandling;
use Database\Factories\BearsBiometryAnimalHandlingFactory;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Map;
use Orchid\Screen\Fields\Select;
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
		'bearsBiometryAnimalHandling.projection_type',
		'bearsBiometryAnimalHandling.EPSG_3912_x',
		'bearsBiometryAnimalHandling.EPSG_3912_y',
		'bearsBiometryAnimalHandling.EPSG_3794_x',
		'bearsBiometryAnimalHandling.EPSG_3794_y',
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
		$canSee3912 = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.projection_type') == BearsBiometryAnimalHandling::PT_3912 : false;
		$canSee3794 = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.projection_type') == BearsBiometryAnimalHandling::PT_3794 : false;

		return [
			Layout::rows([
				Map::make('bearsBiometryAnimalHandling.geo_location')
					->title(__('Location'))
					->required()
					->help(__(''))
					->zoom(7)
					->disabled(),

				Select::make('bearsBiometryAnimalHandling.projection_type')
					->options([
						BearsBiometryAnimalHandling::PT_MAP_LANG_LAT => __('Map / lang+lat'),
						BearsBiometryAnimalHandling::PT_3912 => __('EPSG:3912'),
						BearsBiometryAnimalHandling::PT_3794 => __('EPSG:3794'),
					])
					->title('Projection type'),

				Input::make('bearsBiometryAnimalHandling.EPSG_3912_x')
					->required()
					->title(__('EPSG_3912_x'))
					->canSee($canSee3912),

				Input::make('bearsBiometryAnimalHandling.EPSG_3912_y')
					->required()
					->title(__('EPSG_3912_y'))
					->canSee($canSee3912),

				Input::make('bearsBiometryAnimalHandling.EPSG_3794_x')
					->required()
					->title(__('EPSG_3794_x'))
					->canSee($canSee3794),

				Input::make('bearsBiometryAnimalHandling.EPSG_3794_y')
					->required()
					->title(__('EPSG_3794_y'))
					->canSee($canSee3794),

				Input::make('bearsBiometryAnimalHandling.hunting_management_area')
					->required()
					->title(__('Hunting-management area (LUO)')),

				Input::make('bearsBiometryAnimalHandling.hunting_ground')
					->required()
					->title(__('Hunting ground'))
			]),
		];
	}
}
