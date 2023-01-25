<?php

namespace App\Orchid\Screens\BiometryData;

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometryData;
use App\Orchid\Layouts\BearsBiometryDataSexListListener;
use App\Orchid\Layouts\BiometryDataAnimalHandlingLayout;
use App\Orchid\Layouts\BiometryDataAnimalLayout;
use App\Orchid\Layouts\BiometryDataMainLayout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Repository;
use Orchid\Support\Facades\Alert;

class BiometryDataCreateScreen extends Screen
{
	/**
	 * @var BearsBiometryData
	 */
	public $bearsBiometryAnimalHandling;
	public $bearsBiometryData;

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
	{
		$this->bearsBiometryAnimalHandling = $bearsBiometryAnimalHandling;

		$bearsBiometryData['bears_biometry_animal_handling_id'] = $bearsBiometryAnimalHandling->id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_handling_date'] = $bearsBiometryAnimalHandling->animal_handling_date;
		$bearsBiometryData['bears_biometry_animal_handling_place_of_removal'] = $bearsBiometryAnimalHandling->place_of_removal;
		$bearsBiometryData['bears_biometry_animal_handling_animal_id'] = $bearsBiometryAnimalHandling->animal->id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_name'] = $bearsBiometryAnimalHandling->animal->name;
		$bearsBiometryData['bears_biometry_animal_handling_animal_species_list_name'] = $bearsBiometryAnimalHandling->animal->species_list->name;
		$bearsBiometryData['sex_list_id'] = $bearsBiometryAnimalHandling->animal->sex_list_id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_status'] = $bearsBiometryAnimalHandling->animal->status == Animal::STR_ALIVE
			? __('Alive')
			: __('Dead');

		return [
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
		return __('Creating new biometry data');
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
				->method('create'),
		];
	}

	public function asyncUpdateDataSexListListenerData($triggers)
	{
		return [
			'bearsBiometryData' => new Repository([
				'sex_list_id'			=> $triggers['sex_list_id'],
				'baculum_length'	=> $triggers['baculum_length'] ?? null,
				'nipple_length'		=> $triggers['nipple_length'] ?? null,
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
						->mask('99')
						->title(__('Visual age estimate'))
						->help(__('Insert age estimate of the animal (0-25)')),
			]),

			BearsBiometryDataSexListListener::class,

			// Body mass of the animal (In kilograms) start
			Layout::rows([
				Group::make([
					Input::make('bearsBiometryData.masa_bruto')
						->mask('999')
						->title(__('Gross'))
						->required()
						->help(__('Insert gross mass of the animal (0-400 kg)')),

					Input::make('bearsBiometryData.masa_neto')
						->mask('999')
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
						->mask('999')
						->title(__('Body length'))
						->required()
						->help(__('Insert Body length of the animal (0-300 cm)')),

					Input::make('bearsBiometryData.tail_length')
						->mask('99')
						->title(__('Tail length without hair'))
						->required()
						->help(__('Insert Tail length without hair (0-60 cm)')),

					Input::make('bearsBiometryData.shoulder_height')
						->mask('999')
						->title(__('Shoulder height'))
						->required()
						->help(__('Insert Shoulder height of the animal (0-150 cm)')),
				])->autoWidth(),

				Group::make([
					Input::make('bearsBiometryData.head_circumference')
						->mask('999')
						->title(__('Head circumference'))
						->required()
						->help(__('Insert Head circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.neck_circumference')
						->mask('999')
						->title(__('Neck circumference'))
						->required()
						->help(__('Insert Neck circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.thorax_circumference')
						->mask('999')
						->title(__('Thorax circumference'))
						->required()
						->help(__('Insert Thorax circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.abdomen_circumference')
						->mask('999')
						->title(__('Abdomen circumference'))
						->required()
						->help(__('Insert Abdomen circumference of the animal (0-150 cm)')),

				])->autoWidth(),
			])->title(__('Lengths and circumferences')),
			// Circumferences end

			BiometryDataMainLayout::class,

			Layout::rows([
				Button::make(__('Save biometry data'))
					->icon('pencil')
					->method('create'),
			])
		];
	}

	/**
	 * @param BearsBiometryData    $bearsBiometryData
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function create(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		$bearsBiometryData = new BearsBiometryData();
		$requestBearsBiometryData = $request->get('bearsBiometryData');

		// HACK
		foreach ($requestBearsBiometryData as $key => $data) {
			if ( $key != 'updated_at' && $key != 'created_at' ) {
				$requestBearsBiometryData[$key] = intVal(str_replace('_', '', $data));
			}
		}

		$sex_list_id = $requestBearsBiometryData['sex_list_id'];

		unset($requestBearsBiometryData['sex_list_id']);

		$animal = Animal::find($bearsBiometryAnimalHandling->animal_id);
		$animal->sex_list_id = $sex_list_id;
		$animal->save();

		$requestBearsBiometryData['bears_biometry_animal_handling_id'] = $bearsBiometryAnimalHandling->id;

		$bearsBiometryData->fill($requestBearsBiometryData)->save();

		Alert::info(__('You have successfully created or updated Biometry Data'));

		return redirect()->route('platform.animalHandling.list');
	}
}
