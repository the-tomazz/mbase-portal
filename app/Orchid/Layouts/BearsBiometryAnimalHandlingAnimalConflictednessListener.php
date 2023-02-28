<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingAnimalConflictednessListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryAnimalHandling.animal_conflictedness',
		'bearsBiometryAnimalHandling.animal_conflictedness_description',
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
	protected $asyncMethod = 'asyncUpdateAnimalHandlingAnimalConflictednessListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		$canSee = isset($this->query)
			? $this->query->get('bearsBiometryAnimalHandling.animal_conflictedness') == BearsBiometryAnimalHandling::CONFLICTEDNESS_CONFLICTING
			: false;

		return [
			Layout::rows([
				Group::make([
					Select::make('bearsBiometryAnimalHandling.animal_conflictedness')
					->title(__('Animal conflictedness'))
					->empty(__('<Select>'))
					->required()
					->options([
						BearsBiometryAnimalHandling::CONFLICTEDNESS_UNKNOWN => __('Unknown'),
						BearsBiometryAnimalHandling::CONFLICTEDNESS_CONFLICTING => __('Conflicting'),
					]),

				Input::make('bearsBiometryAnimalHandling.animal_conflictedness_details')
					->title(__('Description of conflictedness'))
					->help(__('Specify, why you think that this precise individual was the one that created conflicts.'))
					->required()
					->canSee($canSee),
				])
			]),
		];
	}
}
