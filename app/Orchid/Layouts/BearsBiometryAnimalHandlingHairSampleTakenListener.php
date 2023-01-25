<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingHairSampleTakenListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryAnimalHandling.hair_sample_taken',
		'bearsBiometryAnimalHandling.hair_sample_taken_details',
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
	protected $asyncMethod = 'asyncUpdateAnimalHandlingHairSampleTakenListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		$canSee = isset($this->query) ? intval($this->query->get('bearsBiometryAnimalHandling.hair_sample_taken')) == 1 : false;

		return [
			Layout::rows([
				Switcher::make('bearsBiometryAnimalHandling.hair_sample_taken')
						->sendTrueOrFalse()
						->title(__('Hair sample taken'))
						->help(__('Please note if hair sample has been collected')),

				Input::make('bearsBiometryAnimalHandling.hair_sample_taken_details')
					->title(__('Hair sampling details'))
					->help(__('Please insert the hair sampling details'))
					->canSee($canSee),
			]),
		];
	}
}
