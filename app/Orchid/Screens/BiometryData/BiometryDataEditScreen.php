<?php

namespace App\Orchid\Screens\BiometryData;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometryData;
use App\Models\IncisorsWearList;
use App\Orchid\Layouts\BearsBiometryDataSexListListener;
use App\Orchid\Layouts\BiometryDataAnimalHandlingLayout;
use App\Orchid\Layouts\BiometryDataAnimalLayout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Layouts\Modal;
use Orchid\Screen\Repository;
use Orchid\Support\Facades\Alert;

class BiometryDataEditScreen extends Screen
{
	/**
	 * @var BearsBiometryData
	 */
	public $bearsBiometryAnimalHandling;
	public $bearsBiometryData;

	private $action;

	private const FIELD_VALIDATIONS = [
		'age' => 'numeric|min:0|max:25',
		'baculum_length' => 'numeric|min:0|max:20',
		'nipple_length' => 'numeric|min:0|max:15',
		'testicals_left_length' => 'numeric|min:0|max:10',
		'testicals_left_width' => 'numeric|min:0|max:10',
		'testicals_right_length' => 'numeric|min:0|max:10',
		'testicals_right_width' => 'numeric|min:0|max:10',
		'hair_tuft_length' => 'numeric|min:0|max:15',
		'masa_bruto' => 'numeric|min:0|max:400',
		'masa_neto' => 'numeric|min:0|max:400',
		'body_length' => 'numeric|min:0|max:300',
		'tail_length' => 'numeric|min:0|max:60',
		'shoulder_height' => 'numeric|min:0|max:150',
		'head_circumference' => 'numeric|min:0|max:150',
		'neck_circumference' => 'numeric|min:0|max:150',
		'thorax_circumference' => 'numeric|min:0|max:170',
		'abdomen_circumference' => 'numeric|min:0|max:150',
		'upper_left_canines_length' => 'numeric|min:0|max:6',
		'lower_left_canines_length' => 'numeric|min:0|max:5',
		'upper_right_canines_length' => 'numeric|min:0|max:6',
		'lower_right_canines_length' => 'numeric|min:0|max:5',
		'distance_between_upper_canines' => 'numeric|min:0|max:9',
		'distance_between_lower_canines' => 'numeric|min:0|max:9',
		'number_of_premolars_in_the_upper_jaw' => 'numeric|min:0|max:9',
		'number_of_premolars_in_the_lower_jaw' => 'numeric|min:0|max:9',
		'front_left_paw_length' => 'numeric|min:0|max:25',
		'front_left_paw_width' => 'numeric|min:0|max:20',
		'front_right_paw_length' => 'numeric|min:0|max:25',
		'front_right_paw_width' => 'numeric|min:0|max:20',
		'hind_left_paw_length' => 'numeric|min:0|max:30',
		'hind_left_paw_width' => 'numeric|min:0|max:20',
		'hind_right_paw_length' => 'numeric|min:0|max:30',
		'hind_right_paw_width' => 'numeric|min:0|max:20',
		'ear_length_without_hair' => 'numeric|min:0|max:20'
	];

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, BearsBiometryData $bearsBiometryData): iterable
	{
		if ($bearsBiometryData->exists) {
			$this->action = 'edit';
		} else {
			$this->action = 'add';
		}

		$bearsBiometryData['bears_biometry_animal_handling_animal_handling_date'] = $bearsBiometryAnimalHandling->animal_handling_date;
		$bearsBiometryData['bears_biometry_animal_handling_place_of_removal'] = $bearsBiometryAnimalHandling->place_of_removal;
		$bearsBiometryData['bears_biometry_animal_handling_animal_id'] = $bearsBiometryAnimalHandling->animal->id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_name'] = $bearsBiometryAnimalHandling->animal->name;
		$bearsBiometryData['bears_biometry_animal_handling_animal_species_list_name'] = $bearsBiometryAnimalHandling->animal->species_list->name;
		$bearsBiometryData['bears_biometry_animal_handling_animal_sex_list_id'] = $bearsBiometryAnimalHandling->animal->sex_list_id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_species_list_id'] = $bearsBiometryAnimalHandling->animal->species_list_id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_status'] = $bearsBiometryAnimalHandling->animal->statusString();

		return [
			'bearsBiometryAnimalHandling' => $bearsBiometryAnimalHandling,
			'bearsBiometryData' => $bearsBiometryData
		];
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return __('Edit biometry data');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		return [
			Button::make(__('Save biometry data'))
				->icon('pencil')
				->method($this->action . 'BiometryData'),
		];
	}

	public function asyncUpdateDataSexListListenerData($triggers)
	{
		return [
			'bearsBiometryData' => new Repository([
				'bears_biometry_animal_handling_animal_sex_list_id'	=> $triggers['bears_biometry_animal_handling_animal_sex_list_id'],
				'bears_biometry_animal_handling_animal_species_list_id'	=> $triggers['bears_biometry_animal_handling_animal_species_list_id'],
				'baculum_length'		=> $triggers['baculum_length'] ?? null,
				'nipple_length'			=> $triggers['nipple_length'] ?? null,
				'teats_wear_list_id'	=> $triggers['teats_wear_list_id'] ?? null,
			]),
		];
	}

	/**
	 * Views.
	 *
	 * @return \Orchid\Screen\Layout[]|string[]
	 */
	public function layout(): iterable
	{
		return [
			Layout::columns([
				(new BiometryDataAnimalLayout)->title(__('Animal')),
				(new BiometryDataAnimalHandlingLayout)->title(__('Animal handling')),
			]),

			Layout::rows([
				Input::make('bearsBiometryData.age')
						->title(__('Visual age estimate'))
						->help(__('Insert age estimate of the animal (0-25)')),
			]),

			BearsBiometryDataSexListListener::class,

			// Body mass of the animal (In kilograms) start
			Layout::rows([
				Group::make([
					Input::make('bearsBiometryData.masa_bruto')
						->title(__('Gross'))
						->required()
						->help(__('Insert gross mass of the animal (0-400 kg)')),

					Input::make('bearsBiometryData.masa_neto')
						->title(__('Net'))
						->required()
						->help(__('Insert net mass of the animal (0-400 kg)')),

				])->autoWidth()
			])->title(__('Body mass')),
			// Body mass of the animal (In kilograms) end

			// Length sizes (In cm with mm accuracy) start
			Layout::rows([
				Group::make([
					Input::make('bearsBiometryData.body_length')
						->title(__('Body length'))
						->required()
						->help(__('Insert Body length of the animal (0-300 cm)')),

					Input::make('bearsBiometryData.tail_length')
						->title(__('Tail length without hair'))
						->required()
						->help(__('Insert Tail length without hair (0-60 cm)')),

					Input::make('bearsBiometryData.shoulder_height')
						->title(__('Shoulder height'))
						->required()
						->help(__('Insert Shoulder height of the animal (0-150 cm)')),
				])->autoWidth(),

				Group::make([
					Input::make('bearsBiometryData.head_circumference')
						->title(__('Head circumference'))
						->required()
						->help(__('Insert Head circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.neck_circumference')
						->title(__('Neck circumference'))
						->required()
						->help(__('Insert Neck circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.thorax_circumference')
						->title(__('Thorax circumference'))
						->required()
						->help(__('Insert Thorax circumference of the animal (0-170 cm)')),

					Input::make('bearsBiometryData.abdomen_circumference')
						->title(__('Abdomen circumference'))
						->required()
						->help(__('Insert Abdomen circumference of the animal (0-150 cm)')),

				])->autoWidth(),
			])->title(__('Lengths and circumferences')),
			// Circumferences end

			// Jaw start
			Layout::rows([
				Select::make('bearsBiometryData.incisors_wear_list_id')
					->fromQuery(IncisorsWearList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->title(__('Incisors (front teeth) wear'))
					->required()
					->help(__('Please insert Incisors (front teeth) wear'))
					->empty(__('<Select>')),

				Label::make('')->title(__('Length of left canines')),

				// Length of left canines start
				Group::make([
					Input::make('bearsBiometryData.upper_left_canines_length')
						->title(__('Upper'))
						->required()
						->help(__('Insert Length of Upper left canines (0-6 cm)')),

					Input::make('bearsBiometryData.lower_left_canines_length')
						->title(__('Lower'))
						->required()
						->help(__('Insert Length of Lower left canines (0-5 cm)')),

				])->autoWidth(),
				// Length of left canines end

				Label::make('')->title(__('Length of right canines')),

				// Length of right canines start
				Group::make([
					Input::make('bearsBiometryData.upper_right_canines_length')
						->title(__('Upper'))
						->required()
						->help(__('Insert Length of Upper right canines (0-6 cm)')),

					Input::make('bearsBiometryData.lower_right_canines_length')
						->title(__('Lower'))
						->required()
						->help(__('Insert Length of Lower right canines (0-5 cm)')),

				])->autoWidth(),
				// Length of right canines end

				Label::make('')->title(__('Distance between canines')),

				// Length of right canines start
				Group::make([
					Input::make('bearsBiometryData.distance_between_upper_canines')
							->title(__('Upper'))
							->required()
							->help(__('Insert Distance between upper canines (0-9 cm)')),

					Input::make('bearsBiometryData.distance_between_lower_canines')
						->title(__('Lower'))
						->required()
						->help(__('Insert Distance between lower canines (0-9 cm)')),

				])->autoWidth(),

				Label::make('')->title(__('Number of premolars')),

				// Number of premolars start
				Group::make([
					/* Select::make('bearsBiometryData.number_of_premolars_in_the_upper_jaw')
						->options($premolarsOptions)
						->title(__('Upper jaw (left + right)'))
						->required()
						->empty(__('<Select>'))
						->help(__('Please insert Number of premolars in the Upper jaw (left + right)')),

					Select::make('bearsBiometryData.number_of_premolars_in_the_lower_jaw')
						->options($premolarsOptions)
						->title(__('Lower jaw (left + right)'))
						->required()
						->empty(__('<Select>'))
						->help(__('Please insert Number of premolars in the Lower jaw (left + right)')),
					*/

					Input::make('bearsBiometryData.number_of_premolars_in_the_upper_jaw')
						->title(__('Upper jaw (left + right)'))
						->required()
						->help(__('Please insert Number of premolars in the Upper jaw (left + right) (0-9)')),

					Input::make('bearsBiometryData.number_of_premolars_in_the_lower_jaw')
						->title(__('Lower jaw (left + right)'))
						->required()
						->help(__('Please insert Number of premolars in the Lower jaw (left + right) (0-9)')),
				])->autoWidth(),
				// Number of premolars end
			])->title(__('Jaw')),
			// Jaw end

			// Paws start
			Layout::rows([

				Label::make('')->title(__('Front left paw')),

				// Front left paw start
				Group::make([
					Input::make('bearsBiometryData.front_left_paw_length')
						->required()
						->title(__('Length'))
						->help(__('Insert Front left paw length (0-25 cm)')),

					Input::make('bearsBiometryData.front_left_paw_width')
						->title(__('Width'))
						->required()
						->help(__('Insert Front left paw width (0-20 cm)')),

				])->autoWidth(),
				// Front left paw end

				Label::make('')->title(__('Front right paw')),

				// Front right paw start
				Group::make([
					Input::make('bearsBiometryData.front_right_paw_length')
						->title(__('Length'))
						->required()
						->help(__('Insert Front right paw length (0-25 cm)')),

					Input::make('bearsBiometryData.front_right_paw_width')
						->required()
						->title(__('Width'))
						->help(__('Insert Front right paw width (0-20 cm)')),

				])->autoWidth(),
				// Front right paw end

				Label::make('')->title(__('Hind left paw')),

				// Hind left paw start
				Group::make([
					Input::make('bearsBiometryData.hind_left_paw_length')
						->title(__('Length'))
						->required()
						->help(__('Insert Hind left paw length (0-30 cm)')),

					Input::make('bearsBiometryData.hind_left_paw_width')
						->title(__('Width'))
						->required()
						->help(__('Insert Hind left paw width (0-20 cm)')),

				])->autoWidth(),
				// Hind left paw end

				Label::make('')->title(__('Hind right paw')),

				// Hind right paw start
				Group::make([
					Input::make('bearsBiometryData.hind_right_paw_length')
						->title(__('Length'))
						->required()
						->help(__('Insert Hind right paw length (0-30 cm)')),

					Input::make('bearsBiometryData.hind_right_paw_width')
						->title(__('Width'))
						->required()
						->help(__('Insert Hind right paw width (0-20 cm)')),

				])->autoWidth(),
				// Hind right paw end

			])->title(__('Paws')),

			Layout::rows([
				// Physical condition, illness, injuries, other observations, notes
				Input::make('bearsBiometryData.ear_length_without_hair')
					->title(__('Ear length without hair'))
					->required()
					->help(__('Insert Ear length without hair (0-20 cm)')),
			]),

			Layout::rows([
				TextArea::make('bearsBiometryData.observations_and_notes')
					->title(__('Physical condition, parasites, injuries, markings, other observations (ear tags, signs of crossbreeding with a dog, etc.) and notes'))
					->required()
					->help(__('Please insert physical condition, parasites, injuries, markings, other observations (ear tags, signs of crossbreeding with a dog, etc.) and notes')),
			]),

			Layout::rows([
				Button::make(__('Save biometry data'))
					->icon('pencil')
					->method($this->action . 'BiometryData'),
			]),

			Layout::modal('modalRemove', [
				Layout::rows([
					Label::make('label')
						->title(__('Are you sure you want to remove this animal handling?'))
						->disabled(),
				]),
			])
				->title(__('Remove Animal handling'))
				->size(Modal::SIZE_LG)
				->applyButton(__('Remove'))
				->closeButton(__('Close')),
		];
	}

	/**
	 * @param BearsBiometryAnimalHandling $bearsBiometryAnimalHandling
	 * @param BearsBiometryData $bearsBiometryData
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function createOrUpdateBiometryData(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, BearsBiometryData $bearsBiometryData, Request $request)
	{
		$requestBearsBiometryData = $request->get('bearsBiometryData');
		$validations = [];
		foreach (self::FIELD_VALIDATIONS as $key => $validation) {
			if (isset($requestBearsBiometryData[$key])) {
				$requestBearsBiometryData[$key] = str_replace(",", ".", $requestBearsBiometryData[$key]);
			}
			$validations['bearsBiometryData.' . $key] = $validation;
		};

		$request->merge(['bearsBiometryData' => $requestBearsBiometryData]);

		$request->validate($validations);

		$sex_list_id = $requestBearsBiometryData['bears_biometry_animal_handling_animal_sex_list_id'];
		unset($requestBearsBiometryData['bears_biometry_animal_handling_animal_sex_list_id']);

		$animal = Animal::find($bearsBiometryAnimalHandling->animal_id);
		$animal->sex_list_id = $sex_list_id;
		$animal->save();

		$bearsBiometryAnimalHandling->touch();

		$bearsBiometryData->fill($requestBearsBiometryData);
		$bearsBiometryData->bears_biometry_animal_handling_id = $bearsBiometryAnimalHandling->id;
		$bearsBiometryData->save();

		Alert::info(__('You have successfully updated Biometry Data') . ' ID: ' . $bearsBiometryData->id . ' ' . __('Animal handling') . ' ID: ' . $bearsBiometryData->bears_biometry_animal_handling_id . ' ' . __('Animal') . ' ID: ' . $animal->id . ' ' . __('Name') . ': ' . $animal->name);

		return redirect()->route('platform.animalHandling.list');
	}

	public function addBiometryData(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		return $this->createOrUpdateBiometryData($bearsBiometryAnimalHandling, new BearsBiometryData(), $request);
	}

	public function editBiometryData(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, BearsBiometryData $bearsBiometryData, Request $request)
	{
		return $this->createOrUpdateBiometryData($bearsBiometryAnimalHandling, $bearsBiometryData, $request);
	}
}
