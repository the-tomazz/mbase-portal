<?php

namespace App\Orchid\Layouts;

use App\Models\PlaceTypeList;
use App\Models\SexList;
use App\Models\TeatsWearList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryDataSexListListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets = [
		'bearsBiometryData.sex_list_id',
		'bearsBiometryData.age',
		'bearsBiometryData.dolzina_spolne_kosti',
		'bearsBiometryData.dolzina_seskov',
		'bearsBiometryData.teats_wear_list_id',
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
	protected $asyncMethod = 'asyncUpdateDataSexListListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		Log::debug(['BearsBiometryDataSexListListener', $this->query->get('bearsBiometryData')]);

		$isFemale = isset($this->query) ? $this->query->get('bearsBiometryData.sex_list_id') == SexList::FEMALE_SEX_ID : true;
		$isNeutral = isset($this->query) ? $this->query->get('bearsBiometryData.sex_list_id') == SexList::NEUTRAL_SEX_ID : true;

		return [
			Layout::rows([
				// Sex and age start
				Group::make([
					Select::make('bearsBiometryData.sex_list_id')
						->fromModel(SexList::class, 'name')
						->title(__('Sex'))
						->required()
						->help(__('Select sex of the animal')),

					Input::make('bearsBiometryData.age')
						->mask('99')
						->title(__('Visual age estimate'))
						->help(__('Insert age estimate of the animal (0-25).')),
				]),
				// Sex and age end
				// Sexual characteristics start
				Group::make([
					Input::make('bearsBiometryData.dolzina_spolne_kosti')
						->mask('99')
						->title(__('Length of os penis (penis bone - baculum)'))
						->help(__('Insert Length of os penis (penis bone - baculum) of the animal (0-20 cm)'))
						->canSee(!$isFemale && !$isNeutral),

					Input::make('bearsBiometryData.dolzina_seskov')
						->mask('99')
						->title(__('Nipple length'))
						->help(__('Insert Nipple length (0-15 cm)'))
						->canSee($isFemale && !$isNeutral),

					Select::make('bearsBiometryData.teats_wear_list_id')
						->fromModel(TeatsWearList::class, 'name')
						->title(__('Nipple use '))
						->required()
						->help(__('Select nipple use'))
						->canSee($isFemale && !$isNeutral)
				])->autoWidth(),
				// Sexual characteristics end

			]),
		];
	}
}
