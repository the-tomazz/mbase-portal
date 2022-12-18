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
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Repository;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class BearsBiometryDataEditScreen extends Screen
{
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
		return $this->bearsBiometryData->exists ? __('Edit biometry data') : __('Creating new biometry data');
	}

	/**
	 * The description is displayed on the user's screen under the heading
	 */
	public function description(): ?string
	{
		return __('Biometry data Create / Update');
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
				->method('createOrUpdate')
				->canSee(!$this->bearsBiometryData->exists),

			Button::make('Remove')
				->icon('trash')
				->method('remove')
				->canSee($this->bearsBiometryData->exists),
		];
	}

	public function asyncUpdateDataSexListListenerData($triggers)
	{
		Log::debug(['asyncUpdateDataSexListListenerData', $triggers]);

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
		$premolarsOptions = [];
		foreach (BearsBiometryData::PREMOLARS_VALUES as $premolar_value) {
			$premolarsOptions[$premolar_value] = $premolar_value;
		}

		return [
			Layout::columns([
				Layout::rows([
					Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_id')
						->title(__('Animal ID'))
						->disabled(),

					Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_name')
						->title(__('Animal name'))
						->disabled(),

					Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_species_list_name')
						->title(__('Animal species'))
						->disabled(),

					Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_status')
						->title(__('Animal status'))
						->disabled(),
				])->title(__('Animal')),
				Layout::rows([
					Label::make('bearsBiometryData.bears_biometry_animal_handling_id')
						->title(__('Animal handling ID'))
						->disabled(),

					Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_handling_date')
						->title(__('Animal handling date'))
						->disabled(),

					Label::make('bearsBiometryData.bears_biometry_animal_handling_place_of_removal')
						->title(__('Place of removal / handling'))
						->disabled(),
				])->title(__('Animal handling')),
			]),

			BearsBiometryDataSexListListener::class,

			Layout::rows([
				// Body mass of the animal (In kilograms) start
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

				])->autoWidth(),
				// Body mass of the animal (In kilograms) end

				// Length sizes (In cm with mm accuracy) start
				Group::make([
					Input::make('bearsBiometryData.hrbtna_dolzina')
						->mask('999')
						->title(__('Body length'))
						->required()
						->help(__('Insert Body length of the animal (0-300 cm)')),

					Input::make('bearsBiometryData.trebusna_dolzina')
						->mask('999')
						->title(__('Body length - inferior'))
						->required()
						->help(__('Insert Body length - inferior of the animal (0-300 cm)')),

					Input::make('bearsBiometryData.plecna_visina')
						->mask('999')
						->title(__('Shoulder height'))
						->required()
						->help(__('Insert Shoulder height of the animal (0-150 cm)')),

				])->autoWidth(),
				// Length sizes (In cm with mm accuracy) end

				// Circumferences start
				Group::make([
					Input::make('bearsBiometryData.obseg_glave')
						->mask('999')
						->title(__('Head circumference'))
						->required()
						->help(__('Insert Head circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.obseg_vratu')
						->mask('999')
						->title(__('Neck circumference'))
						->required()
						->help(__('Insert Neck circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.obseg_prsnega_kosa')
						->mask('999')
						->title(__('Thorax circumference'))
						->required()
						->help(__('Insert Thorax circumference of the animal (0-150 cm)')),

					Input::make('bearsBiometryData.obseg_trebuha')
						->mask('999')
						->title(__('Abdomen circumference'))
						->required()
						->help(__('Insert Abdomen circumference of the animal (0-150 cm)')),

				])->autoWidth(),
				// Circumferences end

				// Tail length start
				Group::make([
					Input::make('bearsBiometryData.dolzina_repa_prva_meritev')
						->mask('99')
						->title(__('Tail length without hair'))
						->required()
						->help(__('Insert Tail length without hair (0-60 cm)')),

					Input::make('bearsBiometryData.dolzina_repa_druga_meritev')
						->mask('99')
						->title(__('Length of hair at the end of tail'))
						->help(__('Insert Length of hair at the end of tail (0-60 cm)')),

				])->autoWidth(),
				// Tail length end

				// Ears start
				Group::make([
					Input::make('bearsBiometryData.dolzina_usesov')
						->mask('99')
						->title(__('Ear length without hair'))
						->required()
						->help(__('Insert Ear length without hair (0-20 cm)')),

					Input::make('bearsBiometryData.dolzina_copkov')
						->mask('99')
						->title(__('Length of hair tuft (for lynx only)'))
						->required()
						->help(__('Insert Length of hair tuft (for lynx only) (0-20 cm)')),

				])->autoWidth(),
				// Ears end

				// Front left paw start
				Group::make([
					Input::make('bearsBiometryData.sps_leva')
						->mask('99')
						->title(__('Front left paw width'))
						->required()
						->help(__('Insert Front left paw width (0-20 cm)')),

					Input::make('bearsBiometryData.dps_leva')
						->mask('99')
						->required()
						->title(__('Front left paw length'))
						->help(__('Insert Front left paw length (0-25 cm)')),

				])->autoWidth(),
				// Front left paw end

				// Front right paw start
				Group::make([
					Input::make('bearsBiometryData.sps_desna')
						->mask('99')
						->required()
						->title(__('Front right paw width'))
						->help(__('Insert Front right paw width (0-20 cm)')),

					Input::make('bearsBiometryData.dps_desna')
						->mask('99')
						->title(__('Front right paw length'))
						->required()
						->help(__('Insert Front right paw length (0-25 cm)')),

				])->autoWidth(),
				// Front right paw end

				// Hind left paw start
				Group::make([
					Input::make('bearsBiometryData.szs_leva')
						->mask('99')
						->title(__('Hind left paw width'))
						->required()
						->help(__('Insert Hind left paw width (0-20 cm)')),

					Input::make('bearsBiometryData.dzs_leva')
						->mask('99')
						->title(__('Hind left paw length'))
						->required()
						->help(__('Insert Hind left paw width (0-25 cm)')),

				])->autoWidth(),
				// Hind left paw end

				// Hind right paw start
				Group::make([
					Input::make('bearsBiometryData.szs_desna')
						->mask('99')
						->title(__('Hind left paw width'))
						->required()
						->help(__('Insert Hind left paw width (0-20 cm)')),

					Input::make('bearsBiometryData.dzs_desna')
						->mask('99')
						->title(__('Hind left paw length'))
						->required()
						->help(__('Insert Hind left paw length (0-25 cm)')),

				])->autoWidth(),
				// Hind right paw end

				// Length of left canines start
				Group::make([
					Input::make('bearsBiometryData.dzp_leva')
						->mask('99')
						->title(__('Length of Upper left canines'))
						->required()
						->help(__('Insert Length of Upper left canines (0-6 cm)')),

					Input::make('bearsBiometryData.dsp_leva')
						->mask('99')
						->title(__('Length of Lower left canines'))
						->required()
						->help(__('Insert Length of Lower left canines (0-5 cm)')),

				])->autoWidth(),
				// Length of left canines end

				// Length of right canines start
				Group::make([
					Input::make('bearsBiometryData.dzp_desna')
						->mask('99')
						->title(__('Length of Upper right canines'))
						->help(__('Insert Length of Upper right canines (0-6 cm)')),

					Input::make('bearsBiometryData.dsp_desna')
						->mask('99')
						->title(__('Length of Lower right canines'))
						->help(__('Insert Length of Lower right canines (0-5 cm)')),

				])->autoWidth(),
				// Length of right canines end

				// Number of premolars start
				Group::make([
					Select::make('bearsBiometryData.sp_zgoraj')
						->options($premolarsOptions)
						->title(__('Number of premolars in the Upper jaw (left + right)'))
						->required()
						->help(__('Please insert Number of premolars in the Upper jaw (left + right)')),

					Select::make('bearsBiometryData.sp_spodaj')
						->options($premolarsOptions)
						->title(__('Number of premolars in the Lower jaw (left + right)'))
						->required()
						->help(__('Please insert Number of premolars in the Lower jaw (left + right)')),

				])->autoWidth(),
				// Number of premolars end

				// Other observations start
				Group::make([
					Select::make('bearsBiometryData.incisors_wear_list_id')
						->fromQuery(IncisorsWearList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Incisors (front teeth) wear'))
						->required()
						->help(__('Please insert Incisors (front teeth) wear')),

					Select::make('bearsBiometryData.color_list_id')
						->fromQuery(ColorList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Color'))
						->required()
						->help(__('Please insert Color')),

					Select::make('bearsBiometryData.collar_list_id')
						->fromQuery(CollarList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Light neck stripe "collar"'))
						->required()
						->help(__('Please insert Light neck stripe "collar"')),

				])->autoWidth(),
				// Other observations end

				// Physical condition, illness, injuries, other observations, notes
				TextArea::make('bearsBiometryData.stanje_lesine')
					->title(__('Physical condition, illness, injuries, other observations, notes'))
					->required()
					->help(__('Please insert Physical condition, illness, injuries, other observations, notes')),

				// Date and time of biometry measurements start
				Input::make('bearsBiometryData.cas_biometrije')
					->type('datetime-local')
					->title(__('Date and time of biometry measurements')),

				// Date and time of biometry measurements end

				// images start
				Upload::make('bearsBiometryData.attachment')
					->title('All files'),
				// images end

				Button::make(__('Save biometry data'))
					->icon('pencil')
					->method('createOrUpdate')
					->canSee(!$this->bearsBiometryData->exists),
			])
		];
	}

	/**
	 * @param BearsBiometryData    $bearsBiometryData
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function createOrUpdate(BearsBiometryData $bearsBiometryData, Request $request)
	{
		$bearsBiometryData->fill($request->get('bearsBiometryData'))->save();

		Log::debug(['bearsBiometryData createOrUpdate', $request->get('bearsBiometryData')]);

		$bearsBiometryData->attachment()->syncWithoutDetaching(
			$request->input('bearsBiometryData.attachment', [])
		);

		Alert::info(__('You have successfully created or updated Biometry Data'));

		return redirect()->route('platform.bearsBiometryData.list');
	}

	/**
	 * @param BearsBiometryData $bearsBiometryData
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 * @throws \Exception
	 */
	public function remove(BearsBiometryData $bearsBiometryData)
	{
		$bearsBiometryData->delete();

		Alert::info(__('You have successfully deleted Biometry Data'));

		return redirect()->route('platform.bearsBiometryData.list');
	}
}
