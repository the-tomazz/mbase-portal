<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Models\AnimalRemovalList;
use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometrySample;
use App\Models\LicenceList;
use App\Models\LicencesList;
use App\Models\SexList;
use App\Models\SpeciesList;
use App\Models\ToothTypeList;
use App\Models\WayOfWithdrawalList;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingAnimalListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingGeoLocationListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingHunterFinderSwitchListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingPlaceTypeListListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingSamplesListener;
use App\Orchid\Layouts\WayOfRemovalListener;
use Orchid\Support\Color;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Layouts\Modal;
use Orchid\Screen\Repository;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use proj4php\Proj4php;
use proj4php\Proj;
use proj4php\Point;

class BearsBiometryAnimalHandlingEditScreen extends Screen
{
	private const MAX_SAMPLE_NUMBER = 10;

	public $bearsBiometryAnimalHandling;
	public $animal;
	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
	{
		if ($bearsBiometryAnimalHandling->exists) {
			$bearsBiometryAnimalHandling['geo_location'] = [
				'lat' => $bearsBiometryAnimalHandling->lat,
				'lng' => $bearsBiometryAnimalHandling->lng,
			];
		} else {
			// HACK, Stanko, this is for you :)
			$bearsBiometryAnimalHandling['geo_location'] = [
				'lat' => 46.044705,
				'lng' => 15.2424903,
			];

			$bearsBiometryAnimalHandling['projection_type'] = BearsBiometryAnimalHandling::PT_MAP_LANG_LAT;

			if (Auth::user()->defaultVisualisationAnimalStatus() == Animal::STR_DEAD) {
				$bearsBiometryAnimalHandling['licence_list_id'] = LicenceList::INT_ZGS_LICENCE;
			}

			if ($animal->exists) {
				$bearsBiometryAnimalHandling->animal_id = $animal->id;
			}
		}

		// LOAD ANIMAL
		if ($bearsBiometryAnimalHandling->animal_id) {
			$bearsBiometryAnimalHandling['animal_status'] = $animal->status;
			$bearsBiometryAnimalHandling['animal_previous_status'] = $animal->previous_status;
			$bearsBiometryAnimalHandling['animal_died_at'] = $animal->died_at;
			$bearsBiometryAnimalHandling['animal_name'] = $animal->name;
			$bearsBiometryAnimalHandling['animal_species_list_id'] = $animal->species_list_id;
			$bearsBiometryAnimalHandling['animal_sex_list_id'] = $animal->sex_list_id;
			$bearsBiometryAnimalHandling['description'] = $animal->description;
		} else {
			$bearsBiometryAnimalHandling['animal_status'] = Auth::user()->defaultVisualisationAnimalStatus();
			$bearsBiometryAnimalHandling['animal_sex_list_id'] == SexList::FEMALE_SEX_ID;
		}

		// LOAD SAMPLES
		$sampleNumber = 1;
		foreach ($bearsBiometryAnimalHandling->bearsBiometrySamples as $sample) {
			$bearsBiometryAnimalHandling['sample_code_' . $sampleNumber] = $sample->sample_code;
			$bearsBiometryAnimalHandling['sample_tissue_' . $sampleNumber] = $sample->sample_tissue;
			$bearsBiometryAnimalHandling['sample_comment_' . $sampleNumber] = $sample->sample_comment;

			$sampleNumber++;
		}

		return [
			'bearsBiometryAnimalHandling' => $bearsBiometryAnimalHandling
		];
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return $this->bearsBiometryAnimalHandling->exists ? __('Edit animal handling') : __('New animal handling');
	}

	/**
	 * The description is displayed on the user's screen under the heading
	 */
	public function description(): ?string
	{
		return __('Animal Handling Create / Update');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		return [
			Button::make(__('Save animal handling'))
				->icon('check')
				->method('createOrUpdateAndDoNotAddBiometryData'),

			Button::make(__('Save animal handling and add biometry data'))
				->icon('check')
				->method('createOrUpdateAndAddBiometryData')
				->canSee(!$this->bearsBiometryAnimalHandling->exists),

			ModalToggle::make('Remove')
				->modal('modalRemove')
				->method('remove')
				->icon('trash')
				->canSee($this->bearsBiometryAnimalHandling->exists),
		];
	}

	public function asyncUpdateAnimalHandlingAnimalListenerData($triggers)
	{
		$animalId = $triggers['animal_id'] ?? null;

		if ($animalId) {
			$triggers['animal_status'] = $triggers['animal_status'] ?? Auth::user()->defaultVisualisationAnimalStatus();
			$triggers['animal_previous_status'] = $triggers['animal_previous_status'] ?? (Auth::user()->defaultVisualisationAnimalStatus() == Animal::STR_ALIVE ? Animal::STR_ALIVE : Animal::STR_DEAD);
		}

		return [
			'bearsBiometryAnimalHandling' 	=> new Repository([
				'animal_id'      			=> $triggers['animal_id'] ?? null,
				'animal_status'      		=> $triggers['animal_status'] ?? null,
				'animal_previous_status' 	=> $triggers['animal_previous_status'] ?? null,
				'animal_died_at' 			=> $triggers['animal_died_at'] ?? null,
				'animal_name'      			=> $triggers['animal_name'] ?? null,
				'animal_species_list_id'	=> $triggers['animal_species_list_id'] ?? null,
				'animal_sex_list_id'		=> $triggers['animal_sex_list_id'] ?? null,
				'animal_description'		=> $triggers['animal_description'] ?? null
			]),
		];
	}

	public function asyncUpdateAnimalHandlingPlaceTypeListListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'place_type_list_id'      => $triggers['place_type_list_id'],
				'place_type_list_details' => $triggers['place_type_list_details'] ?? null,
			]),
		];
	}

	public function asyncUpdateAnimalHandlingWayOfRemovalListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'way_of_withdrawal_list_id' => $triggers['way_of_withdrawal_list_id'],
				'licence_number' => $triggers['licence_number'] ?? null,
				'conflict_animal_removal_list_id' => $triggers['conflict_animal_removal_list_id'] ?? null,
				'biometry_loss_reason_list_id' => $triggers['biometry_loss_reason_list_id'] ?? null,
				'biometry_loss_reason_description' => $triggers['biometry_loss_reason_description'] ?? null,
				'project_name' => $triggers['project_name'] ?? null,
				'receiving_country' => $triggers['receiving_country'] ?? null
			]),
		];
	}

	public function asyncUpdateAnimalHandlingGeoLocationListenerData($triggers)
	{
		$proj4 = new Proj4php();
		$proj4->addDef("EPSG:3912",'+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=bessel +towgs84=409.545,72.164,486.872,3.085957,5.469110,-11.020289,17.919665 +units=m +no_defs');
		$proj4->addDef("EPSG:3794",'+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs');

		$projEPSG4326 = new Proj('EPSG:4326', $proj4);
		$projEPSG3912 = new Proj('EPSG:3912', $proj4);
        $projEPSG3794 = new Proj('EPSG:3794', $proj4);

		switch ($triggers['projection_type']) {
			case BearsBiometryAnimalHandling::PT_MAP_LANG_LAT:
				$pointEPSG4326 = new Point($triggers['geo_location']['lng'], $triggers['geo_location']['lat'], $projEPSG4326);
				$sourcePoint = clone $pointEPSG4326; $pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
				$sourcePoint = clone $pointEPSG4326; $pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);

				break;
			case BearsBiometryAnimalHandling::PT_3912:
				if (isset($triggers['EPSG_3912_x'])) {
					$pointEPSG3912 = new Point($triggers['EPSG_3912_x'], $triggers['EPSG_3912_y'], $projEPSG3912);
					$sourcePoint = clone $pointEPSG3912; $pointEPSG4326 = $proj4->transform($projEPSG4326, $sourcePoint);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);
				} else {
					$pointEPSG4326 = new Point($triggers['geo_location']['lng'], $triggers['geo_location']['lat'], $projEPSG4326);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);
				}

				break;
			case BearsBiometryAnimalHandling::PT_3794:
				if (isset($triggers['EPSG_3794_x'])) {
					$pointEPSG3794 = new Point($triggers['EPSG_3794_x'], $triggers['EPSG_3794_y'], $projEPSG3794);
					$sourcePoint = clone $pointEPSG3794; $pointEPSG4326 = $proj4->transform($projEPSG4326, $sourcePoint);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
				} else {
					$pointEPSG4326 = new Point($triggers['geo_location']['lng'], $triggers['geo_location']['lat'], $projEPSG4326);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
					$sourcePoint = clone $pointEPSG4326; $pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);
				}

				break;
		}

		$lat = $pointEPSG4326->y;
		$lng = $pointEPSG4326->x;

		$results = DB::select('
			SELECT
				gid
			FROM
				mbase2_ge.spatial_units
			WHERE
				public.ST_Contains(
					geom,
					public.ST_SetSRID(
						public.ST_Point(
							?,
							?
						),
						4326
					)
				)
		', [$lng, $lat]);

		if (count($results) > 0) {
			$gid = $results[0]->gid;

			$LUOResults = DB::select('
				select
					spatial_unit_filter_element_id,
					spatial_unit_filter_elements.name
				from
					spatial_units_spatial_unit_filter_elements
				join
					spatial_unit_filter_elements
				on
					spatial_unit_filter_elements.id = spatial_unit_filter_element_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_elements.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
			', [$gid, '__-LUO']);

			$LOVResults = DB::select('
				select
					spatial_unit_filter_element_id,
					spatial_unit_filter_elements.name
				from
					spatial_units_spatial_unit_filter_elements
				join
					spatial_unit_filter_elements
				on
					spatial_unit_filter_elements.id = spatial_unit_filter_element_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_elements.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
			', [$gid, '__-LOV']);

			if (count($LUOResults) > 0) {
				$LUO = json_decode($LUOResults[0]->name)->name;
			}

			if (count($LOVResults) > 0) {
				$LOV = json_decode($LOVResults[0]->name)->name;
			}

			return [
				'bearsBiometryAnimalHandling' => [
					'geo_location' => new Repository([
						'lat' => $pointEPSG4326->y,
						'lng' => $pointEPSG4326->x,
					]),
					'EPSG_3912_y' => $pointEPSG3912->y,
					'EPSG_3912_x' => $pointEPSG3912->x,
					'EPSG_3794_y' => $pointEPSG3794->y,
					'EPSG_3794_x' => $pointEPSG3794->x,
					'projection_type' => $triggers['projection_type'],
					'hunting_management_area' => $LUO ?? '',
					'hunting_ground' => $LOV ?? '',
					'gid' => $gid
				],
			];
		} else {
			return [
				'bearsBiometryAnimalHandling' => [
					'geo_location' => new Repository([
						'lat' => $pointEPSG4326->y,
						'lng' => $pointEPSG4326->x,
					]),
					'EPSG_3912_y' => $pointEPSG3912->y,
					'EPSG_3912_x' => $pointEPSG3912->x,
					'EPSG_3794_y' => $pointEPSG3794->y,
					'EPSG_3794_x' => $pointEPSG3794->x,
					'projection_type' => $triggers['projection_type'],
					'hunting_management_area' => 'N/A',
					'hunting_ground' => 'N/A',
					'gid' => null

				],
			];
		}
	}

	public function asyncUpdateAnimalHandlingHunterFinderSwitchListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'unknown_hunter_finder'      => $triggers['unknown_hunter_finder'],
				'hunter_finder_name' => $triggers['hunter_finder_name'] ?? null,
				'hunter_finder_surname' => $triggers['hunter_finder_surname'] ?? null,
			]),
		];
	}

	public function asyncUpdateAnimalHandlingSamplesListenerData($triggers)
	{
		$repositoryElements = [];
		for ($sampleNumber = 1; $sampleNumber <= self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$repositoryElement = [
				'sample_code_' . $sampleNumber	=> $triggers['sample_code_' . $sampleNumber] ?? null,
				'sample_tissue_' . $sampleNumber => $triggers['sample_tissue_' . $sampleNumber] ?? null,
				'sample_comment_' . $sampleNumber => $triggers['sample_comment_' . $sampleNumber] ?? null,
			];

			$repositoryElements = array_merge($repositoryElements, $repositoryElement);
		}

		return [
			'bearsBiometryAnimalHandling' => new Repository($repositoryElements)
		];
	}

	/**
	 * Views.
	 *
	 * @return \Orchid\Screen\Layout[]|string[]
	 */
	public function layout(): iterable
	{
		$preBiometryAnimalHandlingSampleListeners = [
			Layout::columns([
				BearsBiometryAnimalHandlingAnimalListener::class,

				BearsBiometryAnimalHandlingGeoLocationListener::class,
			]),

			Layout::rows([
				Select::make('bearsBiometryAnimalHandling.licence_list_id')
						->fromQuery(LicenceList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Licence'))
						->help(__('Please select the Licence'))
						->required(),

				Input::make('bearsBiometryAnimalHandling.number_of_removal_in_the_hunting_administrative_area')
					->mask('999999999999-9999')
					->title(__('Number and the year of removal in hunting administrative area'))
					->help(__('Please insert number and the year of removal in hunting administrative area.')),
			]),

			WayOfRemovalListener::class,

			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.telemetry_uid')
					->title(__('Ear-tag number or radio-collar (telemetry) identification'))
					->help(__('Please describe animal-borne markings (ear-tags, collar, microchips, etc.)')),

				Input::make('bearsBiometryAnimalHandling.animal_handling_date')
					->required()
					->type('datetime-local')
					->title(__('Date and time of removal / handling')),
				// ->value('2011-08-19T13:45:00')
				// ->horizontal(),

				Input::make('bearsBiometryAnimalHandling.place_of_removal')
					->title(__('Geo location / Local name'))
					->help(__('Please insert geographical location / local name')),
			]),

			BearsBiometryAnimalHandlingPlaceTypeListListener::class,

			BearsBiometryAnimalHandlingHunterFinderSwitchListener::class,

			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.witness_accompanying_person_name')
					->title(__('Witness/Accompanying person name'))
					->help(__('Please insert the name of the Witness/Accompanying person')),

				Input::make('bearsBiometryAnimalHandling.witness_accompanying_person_surname')
					->title(__('Witness/Accompanying person surname'))
					->help(__('Please insert the surname of the witness / Accompanying person')),
			]),
		];

		$biometryAnimalHandlingSamplesListeners = [
			new BearsBiometryAnimalHandlingSamplesListener(self::MAX_SAMPLE_NUMBER)
		];

		/*
		for ($sampleNumber=1; $sampleNumber<=self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$biometryAnimalHandlingSamplesListeners[] = new BearsBiometryAnimalHandlingSamplesListener($sampleNumber);
		}
		*/

		$postBiometryAnimalHandlingSampleListeners = [
			// SAMPLES TYPE SECTION START
			Layout::rows([
				Group::make([
					Switcher::make('bearsBiometryAnimalHandling.hair_sample_taken')
						->sendTrueOrFalse()
						->title(__('Hair sample collected'))
						->help(__('Please note if hair sample has been collected')),

					Switcher::make('bearsBiometryAnimalHandling.blood_sample_taken')
						->sendTrueOrFalse()
						->title(__('Blood sample collected'))
						->help(__('Please note if Blood sample has been collected')),

					Select::make('bearsBiometryAnimalHandling.tooth_type_list_id')
						->fromQuery(ToothTypeList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->title(__('Tooth Type'))
						->help(__('Please select the Tooth Type'))
						->empty(__('<Empty>')),
				])->autoWidth(),
			]),
			// SAMPLES TYPE SECTION END

			// TAXIDERMIST SECTION START
			Layout::rows([
				Group::make([
					Input::make('bearsBiometryAnimalHandling.taxidermist_name')
						->title(__('Taxidermist name'))
						->help(__('Please insert the name of the taxidermist')),

					Input::make('bearsBiometryAnimalHandling.taxidermist_surname')
						->title(__('Taxidermist surname'))
						->help(__('Please insert the surname of the Taxidermist'))
				])->autoWidth(),
			]),

			// TAXIDERMIST SECTION END

			Layout::block([])
				->commands(
					[
						Button::make(__('Save animal handling'))
							->type(Color::DEFAULT())
							->icon('check')
							->method('createOrUpdateAndDoNotAddBiometryData'),

						Button::make(__('Save animal handling and add biometry data'))
							->type(Color::DEFAULT())
							->icon('check')
							->method('createOrUpdateAndAddBiometryData')
							->canSee($this->bearsBiometryAnimalHandling !== null && !$this->bearsBiometryAnimalHandling->exists)
					]
				),

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

		return array_merge(
			$preBiometryAnimalHandlingSampleListeners,
			$biometryAnimalHandlingSamplesListeners,
			$postBiometryAnimalHandlingSampleListeners,
		);
	}

	/**
	 * @param Animal    $animal
	 * @param BearsBiometryAnimalHandling    $bearsBiometryAnimalHandling
	 * @param Request $request
	 */
	private function createOrUpdate(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		$bearsBiometryAnimalHandling->fill($request->get('bearsBiometryAnimalHandling'));

		$animalId = $request->get('bearsBiometryAnimalHandling')['animal_id'] ?? null;
		if ($animalId) {
			$animal = Animal::find($animalId);
			if ($animal->status == Animal::STR_DEAD) {
				$animalStatus = Animal::STR_DEAD;
			} else {
				$animalStatus = $request->get('bearsBiometryAnimalHandling')['animal_status'];
			}
		} else {
			$animalStatus = $request->get('bearsBiometryAnimalHandling')['animal_status'];
		}

		$bearsBiometryAnimalHandling['animal_status_on_handling'] = $animalStatus;

		if (!$animalId) {
			// create new animal
			$animal = new Animal();

			$isAlive = $animalStatus == Animal::STR_ALIVE;

			$animal->fill([
				'status' => $animalStatus,
				'name' => $isAlive ? $request->get('bearsBiometryAnimalHandling')['animal_name'] : '',
				'species_list_id' => $request->get('bearsBiometryAnimalHandling')['animal_species_list_id'],
				'sex_list_id' => $request->get('bearsBiometryAnimalHandling')['animal_sex_list_id'],
				'description' => $request->get('bearsBiometryAnimalHandling')['animal_description'],
				'died_at' => now(),
				'previous_status' => $isAlive ? Animal::STR_ALIVE : Animal::STR_DEAD
			]);

			$animal->save();

			if (!$isAlive) {
				$animal->fill(['name' => $animal->id]);
				$animal->save();
			}

			$bearsBiometryAnimalHandling['animal_id'] = $animal->id;
		} else {
			$animal = Animal::find($animalId);
			$animal['status'] = $animalStatus;
			$animal->save();
		}

		$bearsBiometryAnimalHandling->lat = $request->get('bearsBiometryAnimalHandling')['geo_location']['lat'];
		$bearsBiometryAnimalHandling->lng = $request->get('bearsBiometryAnimalHandling')['geo_location']['lng'];
		$bearsBiometryAnimalHandling->save();

		if ($bearsBiometryAnimalHandling->bearsBiometrySamples()) {
			$bearsBiometryAnimalHandling->bearsBiometrySamples()->delete();
		}

		for ($sampleNumber = 1; $sampleNumber <= self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$bearsBiometrySample = new BearsBiometrySample();

			$sampleCode = $request->get('bearsBiometryAnimalHandling')['sample_code_' . $sampleNumber] ?? '';

			if ($sampleCode != '') {
				$bearsBiometrySampleData = [
					'bears_biometry_animal_handling_id' => $bearsBiometryAnimalHandling->id,
					'sample_code' => $sampleCode,
					'sample_tissue' => $request->get('bearsBiometryAnimalHandling')['sample_tissue_' . $sampleNumber],
					'sample_comment' => $request->get('bearsBiometryAnimalHandling')['sample_comment_' . $sampleNumber],
				];

				$bearsBiometrySample->fill($bearsBiometrySampleData)->save();
			}
		}

		Alert::info(__('You have successfully created or updated an Animal Handling form.') . 'ID: ' . $bearsBiometryAnimalHandling->id . ' ' . __('Name') . ': ' . $animal->name);
	}

	/**
	 * @param Animal    $animal
	 * @param BearsBiometryAnimalHandling    $bearsBiometryAnimalHandling
	 * @param Request $request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function createOrUpdateAndDoNotAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		$this->createOrUpdate($animal, $bearsBiometryAnimalHandling, $request);

		return redirect()->route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->defaultVisualisationAnimalStatus()]);
	}

	/**
	 * @param Animal    					$animal
	 * @param BearsBiometryAnimalHandling	$bearsBiometryAnimalHandling
	 * @param Request 						$request
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 */
	public function createOrUpdateAndAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		$this->createOrUpdate($animal, $bearsBiometryAnimalHandling, $request);

		return redirect()->route('platform.bearsBiometryData.edit', $bearsBiometryAnimalHandling);
	}

	/**
	 * @param Post $bearsBiometryAnimalHandling
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 * @throws \Exception
	 */
	public function remove(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling)
	{
		$bearsBiometryAnimalHandling->delete();

		Alert::info(__('You have successfully deleted the animal handling'));

		return redirect()->route('platform.animalHandling.list');
	}
}
