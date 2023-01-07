<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Models\BearsBiometryData;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\IncisorsWearList;
use App\Models\SexList;
use App\Models\TeatsWearList;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Layouts\Modal;
use Orchid\Screen\Screen;
use Orchid\Screen\Sight;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class BiometryDataViewScreen extends Screen
{
	public $bearsBiometryData;
	private $id;

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(BearsBiometryData $bearsBiometryData): iterable
	{
		$this->id = $bearsBiometryData->id;

		$bearsBiometryData['bears_biometry_animal_handling_animal_handling_date'] = $bearsBiometryData->bears_biometry_animal_handling->animal_handling_date;
		$bearsBiometryData['bears_biometry_animal_handling_place_of_removal'] = $bearsBiometryData->bears_biometry_animal_handling->place_of_removal;
		$bearsBiometryData['bears_biometry_animal_handling_animal_id'] = $bearsBiometryData->bears_biometry_animal_handling->animal->id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_name'] = $bearsBiometryData->bears_biometry_animal_handling->animal->name;
		$bearsBiometryData['bears_biometry_animal_handling_animal_species_list_name'] = $bearsBiometryData->bears_biometry_animal_handling->animal->species_list->name;
		$bearsBiometryData['sex_list_id'] = $bearsBiometryData->bears_biometry_animal_handling->animal->sex_list_id;
		$bearsBiometryData['bears_biometry_animal_handling_animal_status'] = $bearsBiometryData->bears_biometry_animal_handling->animal->status == Animal::STR_ALIVE
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
        return __('Biometry Data');
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Link::make(__('Update'))
				->icon('pencil')
				->route('platform.biometryData.edit', [ 'bearsBiometryAnimalHandling' => $this->bearsBiometryData->bears_biometry_animal_handling, 'bearsBiometryData' => $this->id ]),

			ModalToggle::make('Remove')
				->modal('modalRemove')
				->method('remove')
				->icon('trash'),
		];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
		$isFemale = $this->bearsBiometryData->sex_list_id == SexList::FEMALE_SEX_ID;
		$isNeutral = $this->bearsBiometryData->sex_list_id == SexList::NEUTRAL_SEX_ID;

		$sights = [
			Sight::make('id'), // ->popover('Identifier, a symbol which uniquely identifies an object or record'),

			Sight::make('', __('Animal')),
			Sight::make('bears_biometry_animal_handling_animal_id', __('Animal ID')),
			Sight::make('bears_biometry_animal_handling_animal_name', __('Animal name')),
			Sight::make('bears_biometry_animal_handling_animal_species_list_name', __('Animal species')),
			Sight::make('bears_biometry_animal_handling_animal_status', __('Animal status')),

			Sight::make('', __('Animal handling')),
			Sight::make('bears_biometry_animal_handling_id', __('Animal handling ID')),
			Sight::make('bears_biometry_animal_handling_animal_handling_date', __('Animal handling date')),
			Sight::make('bears_biometry_animal_handling_place_of_removal', __('Geo location / Local name')),

			Sight::make('', __('Sex related characteristics')),
			Sight::make('sex_list_id', __('Sex'))
				->render(function ($bearsBiometryData) {
					return SexList::find($bearsBiometryData->bears_biometry_animal_handling->animal->sex_list_id)->name;
				}),
			Sight::make('age', __('Visual age estimate')),
		];

		if (!$isFemale && !$isNeutral) {
			$sights = array_merge($sights, [
				Sight::make('dolzina_spolne_kosti', __('Length of os penis (penis bone - baculum)')),
			]);
		}

		if ($isFemale && !$isNeutral) {
			$sights = array_merge($sights, [
				Sight::make('dolzina_seskov', __('Nipple length')),
				Sight::make('teats_wear_list_id', __('Nipple use'))
					->render(function ($bearsBiometryData) {
						return TeatsWearList::find($bearsBiometryData->teats_wear_list_id)->name;
					}),
			]);
		}

		$sights = array_merge($sights, [
			Sight::make('', __('Body mass of the animal (In kilograms)')),
			Sight::make('masa_bruto', __('Gross')),
			Sight::make('masa_neto', __('Net')),

			Sight::make('', __('Length sizes (In cm with mm accuracy)')),
			Sight::make('hrbtna_dolzina', __('Body length')),
			Sight::make('trebusna_dolzina', __('Body length - inferior')),
			Sight::make('plecna_visina', __('Shoulder height')),

			Sight::make('', __('Circumferences')),
			Sight::make('obseg_glave', __('Head circumference')),
			Sight::make('obseg_vratu', __('Neck circumference')),
			Sight::make('obseg_prsnega_kosa', __('Thorax circumference')),
			Sight::make('obseg_trebuha', __('Abdomen circumference')),

			Sight::make('', __('Tail length')),
			Sight::make('dolzina_repa_prva_meritev', __('Tail length without hair')),
			Sight::make('dolzina_repa_druga_meritev', __('Length of hair at the end of tail')),

			Sight::make('', __('Ears')),
			Sight::make('dolzina_usesov', __('Ear length without hair')),
			Sight::make('dolzina_copkov', __('Length of hair tuft (for lynx only)')),

			Sight::make('', __('Front left paw')),
			Sight::make('sps_leva', __('Front left paw width')),
			Sight::make('dps_leva', __('Front left paw length')),

			Sight::make('', __('Front right paw')),
			Sight::make('sps_desna', __('Front right paw width')),
			Sight::make('dps_desna', __('Front right paw length')),

			Sight::make('', __('Hind left paw')),
			Sight::make('szs_leva', __('Hind left paw width')),
			Sight::make('dzs_leva', __('Hind left paw length')),

			Sight::make('', __('Hind right paw')),
			Sight::make('szs_desna', __('Hind left paw width')),
			Sight::make('dzs_desna', __('Hind left paw length')),

			Sight::make('', __('Length of left canines')),
			Sight::make('dzp_leva', __('Length of Upper left canines')),
			Sight::make('dsp_leva', __('Length of Lower left canines')),

			Sight::make('', __('Length of right canines')),
			Sight::make('dzp_desna', __('Length of Upper right canines')),
			Sight::make('dsp_desna', __('Length of Lower right canines')),

			Sight::make('', __('Number of premolars')),
			Sight::make('sp_zgoraj', __('Number of premolars in the Upper jaw (left + right)'))
				->render(function ($bearsBiometryData) {
					return BearsBiometryData::PREMOLARS_VALUES[$bearsBiometryData->sp_zgoraj];
				}),
			Sight::make('sp_spodaj', __('Number of premolars in the Lower jaw (left + right)'))
				->render(function ($bearsBiometryData) {
					return BearsBiometryData::PREMOLARS_VALUES[$bearsBiometryData->sp_spodaj];
				}),

			Sight::make('', __('Other observations start')),
			Sight::make('incisors_wear_list_id', __('Incisors (front teeth) wear'))
				->render(function ($bearsBiometryData) {
					return IncisorsWearList::find($bearsBiometryData->incisors_wear_list_id)->name;
				}),
			Sight::make('color_list_id', __('Color'))
				->render(function ($bearsBiometryData) {
					return ColorList::find($bearsBiometryData->color_list_id)->name;
				}),

			Sight::make('collar_list_id', __("Light neck stripe 'collar'"))
				->render(function ($bearsBiometryData) {
					return CollarList::find($bearsBiometryData->collar_list_id)->name;
				}),

			Sight::make('stanje_lesine', __('Physical condition, illness, injuries, other observations, notes')),
			Sight::make('cas_biometrije', __('Date and time of biometry measurements')),

			Sight::make('attachment', __('Attachments'))->render(function ($bearsBiometryData) {
				$render = '';
				$attachments = $bearsBiometryData->attachment->all();

				$counter = 1;
				foreach ($attachments as $attachment) {
					$render .= '<a href="' . $attachment->url . '">' . $counter++ . '. ' . $attachment->original_name . "</a><br>";
				}
				return $render;
			}),
		]);

        return [
			Layout::legend('bearsBiometryData', $sights),
			Layout::modal('modalRemove', [
				Layout::rows([
					Label::make('label')
						->title(__('Are you sure you want to remove this biometry data?'))
						->disabled(),
				]),
			])
				->title(__('Remove Biometry data'))
				->size(Modal::SIZE_LG)
				->applyButton(__('Remove'))
				->closeButton(__('Close')),
		];
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

		return redirect()->route('platform.animalHandling.list');
	}
}
