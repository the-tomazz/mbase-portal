<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\FurPatternInLynxList;
use App\Models\SexList;
use App\Models\SpeciesList;
use App\Models\TeatsWearList;
use Illuminate\Support\Facades\App;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
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
		'bearsBiometryData.bears_biometry_animal_handling_animal_sex_list_id',
		'bearsBiometryData.bears_biometry_animal_handling_animal_species_list_id',
		'bearsBiometryData.baculum_length',
		'bearsBiometryData.nipple_length',
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
		$isFemale = isset($this->query) ? $this->query->get('bearsBiometryData.bears_biometry_animal_handling_animal_sex_list_id') == SexList::FEMALE_SEX_ID : true;
		$isNeutral = isset($this->query) ? $this->query->get('bearsBiometryData.bears_biometry_animal_handling_animal_sex_list_id') == SexList::NEUTRAL_SEX_ID : true;

		$speciesListId = isset($this->query) ? $this->query->get('bearsBiometryData.bears_biometry_animal_handling_animal_species_list_id') : null;

		$generalSexualCharacteristics = [
			// Sex and age start

			Input::make('bearsBiometryData.bears_biometry_animal_handling_animal_species_list_id')
				->title(__('Animal species code'))
				->readonly(),

			Group::make([
				Select::make('bearsBiometryData.bears_biometry_animal_handling_animal_sex_list_id')
					->fromQuery(
						SexList::where('status', '=', BaseList::STR_ACTIVE)
							->orderBy('name->' . App::getLocale(), 'asc'),
						'name'
					)
					->title(__('Sex'))
					->required()
					->empty(__('<Select>'))
					->help(__('Select the sex of the animal')),
			]),
			// Sex and age end
			// Sexual characteristics start
			Group::make([
				Input::make('bearsBiometryData.baculum_length')
					->title(__('Length of os penis (penis bone - baculum)'))
					->help(__('Insert Length of os penis (penis bone - baculum) of the animal (0-20 cm)'))
					->canSee(!$isFemale && !$isNeutral),

				Input::make('bearsBiometryData.nipple_length')
					->title(__('Nipple length'))
					->help(__('Insert Nipple length (0-15 cm)'))
					->canSee($isFemale && !$isNeutral),

				Select::make('bearsBiometryData.teats_wear_list_id')
					->fromQuery(TeatsWearList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->title(__('Nipple use'))
					->required()
					->help(__('Select nipple use'))
					->canSee($isFemale && !$isNeutral)
					->empty(__('<Select>')),
			])->autoWidth(),
			// Sexual characteristics end
		];

		$layoutRows = $generalSexualCharacteristics;

		switch ($speciesListId) {
			case SpeciesList::WOLF_ID:
				if (!$isFemale && !$isNeutral) {
					$additionalSpeciesRelatedInputs = [
						Label::make('')->title(__('Testicals')),

						// Hind right paw start
						Group::make([
							Input::make('bearsBiometryData.testicals_left_length')
								->title(__('Left testicle length'))
								->required()
								->help(__('Left testicle length (0-10 cm)')),

							Input::make('bearsBiometryData.testicals_left_width')
								->title(__('Left testicle width'))
								->required()
								->help(__('Left testicle width (0-10 cm)')),

							Input::make('bearsBiometryData.testicals_right_length')
								->title(__('Right testicle length'))
								->required()
								->help(__('Right testicle length (0-10 cm)')),

							Input::make('bearsBiometryData.testicals_right_width')
								->title(__('Right testicle width'))
								->required()
								->help(__('Right testicle width (0-10 cm)')),

						])->autoWidth(),
						// Hind right paw end

					];
				} else {
					$additionalSpeciesRelatedInputs = [];
				}

				$layoutRows = array_merge($layoutRows, $additionalSpeciesRelatedInputs);

				break;
			case SpeciesList::BROWN_BEAR_ID:
				$additionalSpeciesRelatedInputs = [
					// Other observations start
					Group::make([
						Select::make('bearsBiometryData.collar_list_id')
							->fromQuery(CollarList::where('status', '=', BaseList::STR_ACTIVE), 'name')
							->title(__("Light neck stripe 'collar'"))
							->required()
							->empty(__('<Select>'))
							->help(__("Please insert Light neck stripe 'collar'")),


						Select::make('bearsBiometryData.color_list_id')
							->fromQuery(ColorList::where('status', '=', BaseList::STR_ACTIVE), 'name')
							->title(__('Color'))
							->required()
							->empty(__('<Select>'))
							->help(__('Please insert Color')),

					])->autoWidth(),
				];

				$layoutRows = array_merge($layoutRows, $additionalSpeciesRelatedInputs);

			// Other observations end
				break;
			case SpeciesList::LYNX_ID:
				$additionalSpeciesRelatedInputs = [
					Group::make([
						Input::make('bearsBiometryData.hair_tuft_length')
							->title(__('Length of hair tuft (for lynx only) (0-15 cm)'))
							->required()
							->help(__('Insert Length of hair tuft (for lynx only) (0-15 cm)')),

						Select::make('bearsBiometryData.fur_pattern_in_lynx_list_id')
							->fromQuery(FurPatternInLynxList::where('status', '=', BaseList::STR_ACTIVE), 'name')
							->title(__("Lynx fur pattern"))
							->required()
							->empty(__('<Select>'))
							->help(__("Please select lynx fur pattern")),


					])->autoWidth(),
				];

				$layoutRows = array_merge($layoutRows, $additionalSpeciesRelatedInputs);
				break;
		}

		return [
			Layout::rows(
				$layoutRows
			)->title(__('Species and sex related characteristics')),
		];
	}
}
