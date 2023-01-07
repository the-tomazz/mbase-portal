<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingPlaceTypeListListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryAnimalHandling.place_type_list_id',
		'bearsBiometryAnimalHandling.place_type_list_details',
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
	protected $asyncMethod = 'asyncUpdateAnimalHandlingPlaceTypeListListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		$canSee = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.place_type_list_id') == PlaceTypeList::OTHER_ID : false;

		return [
			Layout::rows([
				Select::make('bearsBiometryAnimalHandling.place_type_list_id')
					->fromQuery(PlaceTypeList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->title(__('Place of removal type'))
					->required()
					->help(('Please select the place of removal type.')),

				Input::make('bearsBiometryAnimalHandling.place_type_list_details')
					->title(__('Other place of removal type'))
					->help(__('Please insert the other place of removal type'))
					->canSee($canSee),
			]),
		];
	}
}
