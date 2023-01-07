<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometryData;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\IncisorsWearList;
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
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Upload;
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

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, BearsBiometryData $bearsBiometryData): iterable
	{
		if (!$bearsBiometryData->exists) {
			$bearsBiometryData['bears_biometry_animal_handling_id'] = $bearsBiometryAnimalHandling->id;
		}

		$bearsBiometryData['bears_biometry_animal_handling_animal_handling_date'] = $bearsBiometryAnimalHandling->animal_handling_date;
		$bearsBiometryData['bears_biometry_animal_handling_place_of_removal'] = $bearsBiometryAnimalHandling->place_of_removal;
		$bearsBiometryData['bears_biometry_animal_handling_animal_id'] = $bearsBiometryAnimalHandling->animal->id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_name'] = $bearsBiometryAnimalHandling->animal->name;
		$bearsBiometryData['bears_biometry_animal_handling_animal_species_list_name'] = $bearsBiometryAnimalHandling->animal->species_list->name;
		$bearsBiometryData['sex_list_id'] = $bearsBiometryAnimalHandling->animal->sex_list_id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_status'] = $bearsBiometryAnimalHandling->animal->status == Animal::STR_ALIVE
			? __('Alive')
			: __('Dead');

		$bearsBiometryData->load('attachment');

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
				->method('update'),
		];
	}

	public function asyncUpdateDataSexListListenerData($triggers)
	{
		return [
			'bearsBiometryData' => new Repository([
				'sex_list_id'			=> $triggers['sex_list_id'],
				'age'      				=> $triggers['age'],
				'dolzina_spolne_kosti'	=> $triggers['dolzina_spolne_kosti'] ?? null,
				'dolzina_seskov'		=> $triggers['dolzina_seskov'] ?? null,
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

			BearsBiometryDataSexListListener::class,

			BiometryDataMainLayout::class,

			Layout::rows([
				Button::make(__('Save biometry data'))
					->icon('pencil')
					->method('update'),
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
	 * @param BearsBiometryData    $bearsBiometryData
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function update(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, BearsBiometryData $bearsBiometryData, Request $request)
	{
		$requestBearsBiometryData = $request->get('bearsBiometryData');

		foreach ($requestBearsBiometryData as $key => $data) {
			if ( $key != 'cas_biometrije' && $key != 'updated_at' && $key != 'created_at' ) {
				$requestBearsBiometryData[$key] = intVal(str_replace('_', '', $data));
			}
		}

		$sex_list_id = $requestBearsBiometryData['sex_list_id'];

		unset($requestBearsBiometryData['sex_list_id']);

		$animal = Animal::find($bearsBiometryAnimalHandling->animal_id);
		$animal->sex_list_id = $sex_list_id;
		$animal->save();

		$bearsBiometryData->fill($requestBearsBiometryData)->save();

		$bearsBiometryData->attachment()->syncWithoutDetaching(
			$request->input('bearsBiometryData.attachment', [])
		);

		Alert::info(__('You have successfully created or updated Biometry Data'));

		return redirect()->route('platform.animalHandling.list');
	}
}
