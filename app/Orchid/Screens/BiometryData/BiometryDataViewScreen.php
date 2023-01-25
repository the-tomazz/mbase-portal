<?php

namespace App\Orchid\Screens\BiometryData;

use App\Models\BearsBiometryData;
use App\Models\IncisorsWearList;
use App\Models\SexList;
use App\Models\TeatsWearList;
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

		$bearsBiometryData->bears_biometry_animal_handling->load('attachment');

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

		$idSight = [
			Sight::make('id')
		]; // ->popover('Identifier, a symbol which uniquely identifies an object or record'),

		$animalSight = [
			Sight::make('bears_biometry_animal_handling_animal_id', __('Animal ID'))
				->render(function ($bearsBiometryData) {
					return Link::make($bearsBiometryData->bears_biometry_animal_handling->animal_id)
						->route('platform.animalData.view', [ $bearsBiometryData->bears_biometry_animal_handling->animal_id ])
						->icon('link');
				}),
			Sight::make('bears_biometry_animal_handling_animal_name', __('Animal name'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->animal->name;
				}),
			Sight::make('bears_biometry_animal_handling_animal_species_list_name', __('Animal species'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->animal->species_list->name;
				}),
			Sight::make('bears_biometry_animal_handling_animal_status', __('Animal status'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->animal->statusRender();
				}),
		];

		$animalHandlingSight = [
			Sight::make('', __('Animal handling')),
			Sight::make('bears_biometry_animal_handling->bears_biometry_animal_handling_id', __('Animal handling ID'))
				->render(function ($bearsBiometryData) {
					return Link::make($bearsBiometryData->bears_biometry_animal_handling_id)
						->route('platform.bearsBiometryAnimalHandling.edit', [ $bearsBiometryData->bears_biometry_animal_handling->animal_id, $bearsBiometryData->bears_biometry_animal_handling_id ])
						->icon('link');
				}),
			Sight::make('bears_biometry_animal_handling->animal_handling_date', __('Animal handling date'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->animal_handling_date;
				}),
			Sight::make('bears_biometry_animal_handling->date_and_time_of_biometry_measurements', __('Date and time of biometry measurements'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->date_and_time_of_biometry_measurements;
				}),
			Sight::make('bears_biometry_animal_handling->place_of_removal', __('Geo location / Local name'))
				->render(function ($bearsBiometryData) {
					return $bearsBiometryData->bears_biometry_animal_handling->place_of_removal;
				}),

			Sight::make('', __('Sex related characteristics')),

			Sight::make('bears_biometry_animal_handling->animal->sex_list_id', __('Sex'))
				->render(function ($bearsBiometryData) {
					return SexList::find($bearsBiometryData->bears_biometry_animal_handling->animal->sex_list_id)->name;
				}),

			Sight::make('attachment', __('Attachments'))->render(function ($bearsBiometryData) {
				$render = '';
				$attachments = $bearsBiometryData->bears_biometry_animal_handling->attachment->all();

				$counter = 1;
				foreach ($attachments as $attachment) {
					$render .= '<a href="' . $attachment->url . '">' . $counter++ . '. ' . $attachment->original_name . "</a><br>";
				}
				return $render;
			}),

			Sight::make('age', __('Visual age estimate')),
		];

		if (!$isFemale && !$isNeutral) {
			$animalHandlingSight = array_merge($animalHandlingSight, [
				Sight::make('baculum_length', __('Length of os penis (penis bone - baculum)')),
			]);
		}

		if ($isFemale && !$isNeutral) {
			$animalHandlingSight = array_merge($animalHandlingSight, [
				Sight::make('nipple_length', __('Nipple length')),
				Sight::make('teats_wear_list_id', __('Nipple use'))
					->render(function ($bearsBiometryData) {
						return TeatsWearList::find($bearsBiometryData->teats_wear_list_id)->name;
					}),
			]);
		}

		$biometrySight = [
			Sight::make('', __('Body mass of the animal (In kilograms)')),
			Sight::make('masa_bruto', __('Gross')),
			Sight::make('masa_neto', __('Net')),

			Sight::make('', __('Length sizes (In cm with mm accuracy)')),
			Sight::make('body_length', __('Body length')),
			Sight::make('shoulder_height', __('Shoulder height')),

			Sight::make('', __('Circumferences')),
			Sight::make('head_circumference', __('Head circumference')),
			Sight::make('neck_circumference', __('Neck circumference')),
			Sight::make('thorax_circumference', __('Thorax circumference')),
			Sight::make('abdomen_circumference', __('Abdomen circumference')),

			Sight::make('', __('Tail length')),
			Sight::make('tail_length', __('Tail length without hair')),

			Sight::make('', __('Ears')),
			Sight::make('ear_length_without_hair', __('Ear length without hair')),
			Sight::make('hair_tuft_length', __('Length of hair tuft (for lynx only)')),

			Sight::make('', __('Front left paw')),
			Sight::make('front_left_paw_width', __('Front left paw width')),
			Sight::make('front_left_paw_length', __('Front left paw length')),

			Sight::make('', __('Front right paw')),
			Sight::make('front_right_paw_width', __('Front right paw width')),
			Sight::make('front_right_paw_length', __('Front right paw length')),

			Sight::make('', __('Hind left paw')),
			Sight::make('hind_left_paw_width', __('Hind left paw width')),
			Sight::make('hind_left_paw_length', __('Hind left paw length')),

			Sight::make('', __('Hind right paw')),
			Sight::make('hind_right_paw_width', __('Hind left paw width')),
			Sight::make('hind_right_paw_length', __('Hind left paw length')),

			Sight::make('', __('Length of left canines')),
			Sight::make('upper_left_canines_length', __('Length of Upper left canines')),
			Sight::make('lower_left_canines_length', __('Length of Lower left canines')),

			Sight::make('', __('Length of right canines')),
			Sight::make('upper_right_canines_length', __('Length of Upper right canines')),
			Sight::make('lower_right_canines_length', __('Length of Lower right canines')),

			Sight::make('', __('Distance between canines')),
			Sight::make('distance_between_upper_canines', __('Distance between upper canines')),
			Sight::make('distance_between_lower_canines', __('Distance between lower canines')),

			Sight::make('', __('Testicles')),
			Sight::make('testicals_left_length', __('Left testicle length')),
			Sight::make('testicals_left_width', __('Left testicle width')),
			Sight::make('testicals_right_length', __('Right testicle length')),
			Sight::make('testicals_right_width', __('Right testicle width')),

			Sight::make('', __('Number of premolars')),
			Sight::make('number_of_premolars_in_the_upper_jaw', __('Number of premolars in the Upper jaw (left + right)'))
				->render(function ($bearsBiometryData) {
					return BearsBiometryData::PREMOLARS_VALUES[$bearsBiometryData->number_of_premolars_in_the_upper_jaw];
				}),
			Sight::make('number_of_premolars_in_the_lower_jaw', __('Number of premolars in the Lower jaw (left + right)'))
				->render(function ($bearsBiometryData) {
					return BearsBiometryData::PREMOLARS_VALUES[$bearsBiometryData->number_of_premolars_in_the_lower_jaw];
				}),

			Sight::make('', __('Other observations')),
			Sight::make('incisors_wear_list_id', __('Incisors (front teeth) wear'))
				->render(function ($bearsBiometryData) {
					return IncisorsWearList::find($bearsBiometryData->incisors_wear_list_id)->name;
				}),
			Sight::make('color_list_id', __('Color'))
				->render(function ($bearsBiometryData) {
					return isset($bearsBiometryData->color_list) ? $bearsBiometryData->color_list->name : '-';
				}),

			Sight::make('collar_list_id', __("Light neck stripe 'collar'"))
				->render(function ($bearsBiometryData) {
					return isset($bearsBiometryData->collar_list) ? $bearsBiometryData->collar_list->name : '-';
				}),

			Sight::make('fur_pattern_in_lynx_list_id', __("Lynx fur pattern"))
				->render(function ($bearsBiometryData) {
					return isset($bearsBiometryData->fur_pattern_in_lynx_list) ? $bearsBiometryData->fur_pattern_in_lynx_list->name : '-';
				}),
		];

        return [
			Layout::legend('bearsBiometryData', $idSight),
			Layout::legend('bearsBiometryData', $animalSight)->title(__('Animal')),
			Layout::legend('bearsBiometryData', $animalHandlingSight)->title(__('Animal handling')),
			Layout::legend('bearsBiometryData', $biometrySight)->title(__('Biometry data')),

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
