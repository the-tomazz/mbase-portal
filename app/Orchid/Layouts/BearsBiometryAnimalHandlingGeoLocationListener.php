<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\PlaceTypeList;
use Database\Factories\BearsBiometryAnimalHandlingFactory;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
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
		'bearsBiometryAnimalHandling.projection_type',
		'bearsBiometryAnimalHandling.geo_location.lat',
		'bearsBiometryAnimalHandling.geo_location.lng',
		'bearsBiometryAnimalHandling.EPSG_3912_x',
		'bearsBiometryAnimalHandling.EPSG_3912_y',
		'bearsBiometryAnimalHandling.EPSG_3794_x',
		'bearsBiometryAnimalHandling.EPSG_3794_y',
		'bearsBiometryAnimalHandling.EPSG_4326_x',
		'bearsBiometryAnimalHandling.EPSG_4326_y',
		'bearsBiometryAnimalHandling.place_of_removal',
		'bearsBiometryAnimalHandling.place_type_list_id',
		'bearsBiometryAnimalHandling.place_type_list_details',
		'bearsBiometryAnimalHandling.geo_input_method'
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
		$selected3912 = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.projection_type') == BearsBiometryAnimalHandling::PT_3912 : true;
		$selected3794 = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.projection_type') == BearsBiometryAnimalHandling::PT_3794 : false;
		$selected4326 = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.projection_type') == BearsBiometryAnimalHandling::PT_4326 : false;

		$canSeePlaceTypeListDetails = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.place_type_list_id') == PlaceTypeList::OTHER_ID : false;
		$geoInputMethod = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.geo_input_method') : 'manual';

		return [
			Layout::view('mapExtenderAdditionalTrigger'),
			Layout::rows([
				Select::make('bearsBiometryAnimalHandling.geo_input_method')
					->options([
						'manual' => __('Manual'),
						'map' =>__('Map'),
					])
					->title('Input method type'),

				Select::make('bearsBiometryAnimalHandling.projection_type')
					->options([
						BearsBiometryAnimalHandling::PT_3912 => __('EPSG:3912'),
						BearsBiometryAnimalHandling::PT_3794 => __('EPSG:3794'),
						BearsBiometryAnimalHandling::PT_4326 => __('EPSG:4326 GPS'),
					])
					->title('Projection type')
					->disabled($geoInputMethod == 'map'),

				Group::make([
					Input::make('bearsBiometryAnimalHandling.EPSG_3912_x')
						->required()
						->title(__('EPSG:3912 x'))
						->readonly($geoInputMethod == 'map' || !$selected3912),

					Input::make('bearsBiometryAnimalHandling.EPSG_3912_y')
						->required()
						->title(__('EPSG_3912 y'))
						->readonly($geoInputMethod == 'map' || !$selected3912),
				])->autoWidth(),

				Group::make([
					Input::make('bearsBiometryAnimalHandling.EPSG_3794_x')
						->required()
						->title(__('EPSG:3794 x'))
						->readonly($geoInputMethod == 'map' || !$selected3794),

					Input::make('bearsBiometryAnimalHandling.EPSG_3794_y')
						->required()
						->title(__('EPSG:3794 y'))
						->readonly($geoInputMethod == 'map' || !$selected3794),
				])->autoWidth(),

				Group::make([
					Input::make('bearsBiometryAnimalHandling.EPSG_4326_x')
						->required()
						->title(__('EPSG:4326 x'))
						->readonly($geoInputMethod == 'map' || !$selected4326),

					Input::make('bearsBiometryAnimalHandling.EPSG_4326_y')
						->required()
						->title(__('EPSG:4326 y'))
						->readonly($geoInputMethod == 'map' || !$selected4326),
				])->autoWidth(),

				Map::make('bearsBiometryAnimalHandling.geo_location')
					->required()
					->help(__(''))
					->zoom(7),

				Input::make('bearsBiometryAnimalHandling.hunting_management_area')
					->required()
					->title(__('Hunting-management area (LUO)')),

				Input::make('bearsBiometryAnimalHandling.hunting_ground')
					->required()
					->title(__('Hunting ground')),

				Input::make('bearsBiometryAnimalHandling.place_of_removal')
					->title(__('Geo location / Local name'))
					->help(__('Please insert geographical location / local name')),

				Group::make([
					Select::make('bearsBiometryAnimalHandling.place_type_list_id')
						->fromQuery(PlaceTypeList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Place of removal type'))
						->required()
						->empty(__('<Select>'))
						->help(('Please select the place of removal type')),

					Input::make('bearsBiometryAnimalHandling.place_type_list_details')
						->title(__('Other place of removal type'))
						->help(__('Please insert the other place of removal type'))
						->canSee($canSeePlaceTypeListDetails),
				])->autoWidth()
			])->title(__('Location')),
		];
	}
}
