<?php

namespace App\Orchid\Screens\AnimalHandling;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometrySample;
use App\Models\LicenceList;
use App\Models\SexList;
use App\Models\SpatialUnitFilterType;
use App\Models\ToothTypeList;
use App\Orchid\Layouts\AnimalHandlingSamplesLayout;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingAnimalConflictednessListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingAnimalListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingDNASampleTakenListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingGeoLocationListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingHairSampleTakenListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingHunterFinderSwitchListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingSamplesListener;
use App\Orchid\Layouts\ToothSamplesListener;
use App\Orchid\Layouts\WayOfRemovalListener;
use DateTime;
use Orchid\Support\Color;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
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

	public $animal;
	public $bearsBiometryAnimalHandling;

	private $action;

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
	{
		if ($animal->exists && $bearsBiometryAnimalHandling->exists) {
			$this->action = 'edit';
		} elseif ($animal->exists && !$bearsBiometryAnimalHandling->exists) {
			$this->action = 'add';
		} else { # if (!$this->animal->exists && !$this->bearsBiometryAnimalHandling->exists) {
			$this->action = 'create';
		}

		if ($bearsBiometryAnimalHandling->exists) {
			$bearsBiometryAnimalHandling['animal_handling_date_date'] = (
				new DateTime($bearsBiometryAnimalHandling->animal_handling_date)
			)->format('d.m.Y');

			$bearsBiometryAnimalHandling['animal_handling_date_time'] = (
				new DateTime($bearsBiometryAnimalHandling->animal_handling_date)
			)->format('H:i');

			$bearsBiometryAnimalHandling['geo_location'] = [ // HACK, Stanko, this is for you :)
				'lat' => $bearsBiometryAnimalHandling['lat'],
				'lng' => $bearsBiometryAnimalHandling['lng'],
			];

			$splittedNumberOfRemovalInTheHuntingAdministrativeArea = explode(
				'/',
				$bearsBiometryAnimalHandling['number_of_removal_in_the_hunting_administrative_area']
			);

			if (count($splittedNumberOfRemovalInTheHuntingAdministrativeArea) > 1) {
				$bearsBiometryAnimalHandling['n_number_of_removal_in_the_hunting_administrative_area'] = $splittedNumberOfRemovalInTheHuntingAdministrativeArea[0];
				$bearsBiometryAnimalHandling['y_number_of_removal_in_the_hunting_administrative_area'] = $splittedNumberOfRemovalInTheHuntingAdministrativeArea[1];
			}
		} else {
			$bearsBiometryAnimalHandling['geo_location'] = [ // HACK, Stanko, this is for you :)
				'lat' => 46.044705,
				'lng' => 15.2424903,
			];

			if (Auth::user()->defaultVisualisationAnimalStatus() == Animal::STR_DEAD) {
				$bearsBiometryAnimalHandling['licence_list_id'] = LicenceList::INT_ZGS_LICENCE;
			}

			$bearsBiometryAnimalHandling['measurer_name_and_surname'] = Auth::user()->name;
		}

		$bearsBiometryAnimalHandling['geo_input_method'] = 'map';
		$bearsBiometryAnimalHandling['projection_type'] = BearsBiometryAnimalHandling::PT_3912;

		$proj4 = new Proj4php();
		$proj4->addDef("EPSG:3912", '+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=bessel +towgs84=409.545,72.164,486.872,3.085957,5.469110,-11.020289,17.919665 +units=m +no_defs');
		$proj4->addDef("EPSG:3794", '+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs');

		$projEPSG4326 = new Proj('EPSG:4326', $proj4);
		$projEPSG3912 = new Proj('EPSG:3912', $proj4);
		$projEPSG3794 = new Proj('EPSG:3794', $proj4);

		$pointEPSG4326 = new Point($bearsBiometryAnimalHandling['geo_location']['lng'], $bearsBiometryAnimalHandling['geo_location']['lat'], $projEPSG4326);
		$sourcePoint = clone $pointEPSG4326;
		$pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
		$sourcePoint = clone $pointEPSG4326;
		$pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);

		$bearsBiometryAnimalHandling['EPSG_3912_x'] = $pointEPSG3912->x;
		$bearsBiometryAnimalHandling['EPSG_3912_y'] = $pointEPSG3912->y;
		$bearsBiometryAnimalHandling['EPSG_3794_x'] = $pointEPSG3794->x;
		$bearsBiometryAnimalHandling['EPSG_3794_y'] = $pointEPSG3794->y;
		$bearsBiometryAnimalHandling['EPSG_4326_x'] = $pointEPSG4326->x;
		$bearsBiometryAnimalHandling['EPSG_4326_y'] = $pointEPSG4326->y;

		// FIX ANIMAL DATA
		if ($animal->exists || isset($bearsBiometryAnimalHandling['animal_id'])) {
			$animal['died_at_date'] = $animal->died_at != null ? (new DateTime($animal->died_at))->format('d.m.Y') : null;
			$animal['died_at_time'] = $animal->died_at != null ? (new DateTime($animal->died_at))->format('H:i') : null;
		} else {
			$animal['status'] = Auth::user()->defaultVisualisationAnimalStatus();
			$animal['sex_list_id'] = null;
		}

		// COPY DATA FROM ANIMAL TO ANIMAL HANDLING
		$bearsBiometryAnimalHandling['animal_status'] = $animal['status'] ?? null;
		$bearsBiometryAnimalHandling['animal_name'] = $animal['name'] ?? null;
		$bearsBiometryAnimalHandling['animal_species_list_id'] = $animal['species_list_id'] ?? null;
		$bearsBiometryAnimalHandling['animal_sex_list_id'] = $animal['sex_list_id'] ?? null;
		$bearsBiometryAnimalHandling['animal_died_at_date'] = $animal['died_at_date'] ?? null;
		$bearsBiometryAnimalHandling['animal_died_at_time'] = $animal['died_at_time'] ?? null;
		$bearsBiometryAnimalHandling['animal_id'] = $animal['id'] ?? null;
		$bearsBiometryAnimalHandling['animal_description'] = $animal['description'] ?? null;

		// LOAD SAMPLES
		$sampleNumber = 1;
		foreach ($bearsBiometryAnimalHandling->bearsBiometrySamples as $sample) {
			$bearsBiometryAnimalHandling['sample_code_' . $sampleNumber] = $sample->sample_code;
			$bearsBiometryAnimalHandling['sample_tissue_' . $sampleNumber] = $sample->sample_tissue;
			$bearsBiometryAnimalHandling['sample_comment_' . $sampleNumber] = $sample->sample_comment;

			$sampleNumber++;
		}

		$bearsBiometryAnimalHandling->load('attachment');

		return [
			'animal' => $animal,
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
		return array_merge(
			[
				Button::make(__('Save animal handling'))
					->icon('check')
					->method($this->action . 'AnimalHandlingAndDoNotAddBiometryData'),

				Button::make(__('Save animal handling and add biometry data'))
					->icon('check')
					->method($this->action . 'AnimalHandlingAndAddBiometryData')
					->canSee(!$this->bearsBiometryAnimalHandling->exists),
			],
			Auth::user()->isInGroup('mbase2', 'mortbiom', 'admins')
				? [
					ModalToggle::make('Remove')
						->modal('modalRemove')
						->method('remove')
						->icon('trash')
						->canSee($this->bearsBiometryAnimalHandling->exists),
				]
				: []
		);
	}

	public function asyncUpdateAnimalHandlingAnimalConflictednessListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'animal_conflictedness'      => $triggers['animal_conflictedness'],
				'animal_conflictedness_details' => $triggers['animal_conflictedness_details'] ?? null,
			]),
		];
	}

	public function asyncUpdateAnimalHandlingAnimalListenerData($triggers)
	{
		$oldJsonDataField = $triggers['json_data_field'] ?? null ? json_decode($triggers['json_data_field']) : null;
		// $oldAnimalHandlingType = ( $oldJsonDataField->animal_handling_type ?? null );
		$oldAnimalIsKnownOrAlive = ( $oldJsonDataField->animal_is_known_or_alive ?? null );
		// $animalHandlingType = $triggers['animal_handling_type'] ?? null;
		$animalIsKnownOrAlive = $triggers['animal_is_known_or_alive'] ?? null;

		// $animalHandlingTypeChanged = $oldAnimalHandlingType != $animalHandlingType;
		$animalIsKnownOrAliveChanged = $oldAnimalIsKnownOrAlive != $animalIsKnownOrAlive;
		$animalIdChanged = ( $oldJsonDataField->animal_id ?? null ) != ( $triggers['animal_id'] ?? null );
		$animalStatusChanged = ( $oldJsonDataField->animal_status ?? null ) != ( $triggers['animal_status'] ?? null );

		Log::debug([
			'triggers' => $triggers,
			'oldJsonDataField' => $oldJsonDataField,
			// 'animalHandlingTypeChanged' => $animalHandlingTypeChanged,
			'animalIsKnownOrAliveChanged' => $animalIsKnownOrAliveChanged,
			'animalIdChanged' => $animalIdChanged,
			'animalStatusChanged' => $animalStatusChanged,
		]);

		if (!isset($triggers['y_number_of_removal_in_the_hunting_administrative_area']) ||
			$triggers['y_number_of_removal_in_the_hunting_administrative_area'] == '___') {
			if (isset($triggers['animal_died_at_date'])) {
				$parsedDate = date_parse_from_format("j.n.Y", $triggers['animal_died_at_date']);
				$y_numberOfRemovalInTheHuntingAdministrativeArea = $parsedDate['year'];
			} else {
				$y_numberOfRemovalInTheHuntingAdministrativeArea = date("Y");
			}
		} else {
			$y_numberOfRemovalInTheHuntingAdministrativeArea = $triggers['y_number_of_removal_in_the_hunting_administrative_area'];
		}

		switch ($animalIsKnownOrAlive) {
			case true:
				$animalStatusOnHandling = $animalStatus = Animal::STR_DEAD;
				break;
			case false:
				$animalStatusOnHandling = $triggers['animal_status_on_handling'] ?? Animal::STR_ALIVE;

				if ($animalIdChanged) {
					$animal = Animal::find($triggers['animal_id']);

					$animalStatus = $animal->status;
					$triggers['animal_name'] = $animal->name;
					$triggers['animal_species_list_id'] = $animal->species_list_id;
					$triggers['animal_sex_list_id'] = $animal->sex_list_id;
					$triggers['animal_description'] = $animal->description;
				} else {
					$animalStatus = $triggers['animal_status'] ?? null;
				}

				break;
		}

		switch ($animalIsKnownOrAlive) {
			case false:
				$animalStatusOnHandling = $animalStatus = Animal::STR_DEAD;
				break;
			case true:
				// BearsBiometryAnimalHandlingAnimalListener::STR_ANIMAL_TYPE_UNKNOWN_HANDLED_ALIVE:
				$animalStatus = $triggers['animal_status'] ?? null;
				$animalStatusOnHandling = Animal::STR_ALIVE;
				break;
				// case BearsBiometryAnimalHandlingAnimalListener::STR_ANIMAL_TYPE_KNOWN_HANDLED_DEAD:
				$animalStatusOnHandling = $animalStatus = Animal::STR_DEAD;
			if ($animalIdChanged) {
				$animal = Animal::find($triggers['animal_id']);

				$triggers['animal_name'] = $animal->name;
				$triggers['animal_species_list_id'] = $animal->species_list_id;
				$triggers['animal_sex_list_id'] = $animal->sex_list_id;
				$triggers['animal_description'] = $animal->description;
			}

				break;
				// case BearsBiometryAnimalHandlingAnimalListener::STR_ANIMAL_TYPE_KNOWN_HANDLED_ALIVE:
				$animalStatusOnHandling = $animalStatus = Animal::STR_ALIVE;
			if ($animalIdChanged) {
				$animal = Animal::find($triggers['animal_id']);

				$animalStatus = $animal->status;
				$triggers['animal_name'] = $animal->name;
				$triggers['animal_species_list_id'] = $animal->species_list_id;
				$triggers['animal_sex_list_id'] = $animal->sex_list_id;
				$triggers['animal_description'] = $animal->description;
			} else {
				$animalStatus = $triggers['animal_status'] ?? null;
			}

				break;
		}

		$repositoryData = [
			// 'animal_handling_type' 				=> $animalHandlingType,
			'animal_is_known_or_alive' 			=> $animalIsKnownOrAlive,
			'animal_id'      					=> $triggers['animal_id'] ?? null,
			'animal_status'      				=> $animalStatus,
			'animal_status_on_handling'      	=> $animalStatusOnHandling,
			'animal_name'      					=> $triggers['animal_name'] ?? null,
			'animal_species_list_id'			=> $triggers['animal_species_list_id'] ?? null,
			'animal_sex_list_id'				=> $triggers['animal_sex_list_id'] ?? null,
			'animal_description'				=> $triggers['animal_description'] ?? null,

			'animal_died_at_date' 				=> $triggers['animal_died_at_date'] ?? null,
			'animal_died_at_time' 				=> $triggers['animal_died_at_time'] ?? null,
			'animal_handling_date_date'			=> $triggers['animal_handling_date_date'] ?? null,
			'animal_handling_date_time'			=> $triggers['animal_handling_date_time'] ?? null,

			'way_of_withdrawal_list_id' 		=> $triggers['way_of_withdrawal_list_id'] ?? null,
			'licence_number'					=> $triggers['licence_number'] ?? null,
			'conflict_animal_removal_list_id' 	=> $triggers['conflict_animal_removal_list_id'] ?? null,
			'biometry_loss_reason_list_id' 		=> $triggers['biometry_loss_reason_list_id'] ?? null,
			'biometry_loss_reason_description' 	=> $triggers['biometry_loss_reason_description'] ?? null,
			'project_name'						=> $triggers['project_name'] ?? null,
			'receiving_country'					=> $triggers['receiving_country'] ?? null,
			'n_number_of_removal_in_the_hunting_administrative_area' => $triggers['n_number_of_removal_in_the_hunting_administrative_area'] ?? null,
			'y_number_of_removal_in_the_hunting_administrative_area' => $y_numberOfRemovalInTheHuntingAdministrativeArea,
			'telemetry_uid'						=> $triggers['telemetry_uid'] ?? null
		];

		$repositoryData['json_data_field'] = json_encode($repositoryData);

		$payload = [
			'bearsBiometryAnimalHandling' => new Repository($repositoryData),
		];

		return $payload;
	}

	public function asyncUpdateAnimalHandlingGeoLocationListenerData($triggers)
	{
		if ($triggers['animal_handling_date_date']) {
			$parsedDate = date_parse_from_format(
				"j.n.Y",
				$triggers['animal_handling_date_date']
			);

			if ($parsedDate['year']) {
				$USFormattedDate = $parsedDate['year'] . '-' . $parsedDate['month'] . '-' . $parsedDate['day'];
			} else {
				$USFormattedDate = date_create('now')->format('Y-m-d');
			}
		} else {
			$USFormattedDate = date_create('now')->format('Y-m-d');
		}

		$proj4 = new Proj4php();
		$proj4->addDef("EPSG:3912", '+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=bessel +towgs84=409.545,72.164,486.872,3.085957,5.469110,-11.020289,17.919665 +units=m +no_defs');
		$proj4->addDef("EPSG:3794", '+proj=tmerc +lat_0=0 +lon_0=15 +k=0.9999 +x_0=500000 +y_0=-5000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs');

		$projEPSG4326 = new Proj('EPSG:4326', $proj4);
		$projEPSG3912 = new Proj('EPSG:3912', $proj4);
		$projEPSG3794 = new Proj('EPSG:3794', $proj4);

		if ($triggers['geo_input_method'] == 'map') {
			$pointEPSG4326 = new Point($triggers['geo_location']['lng'], $triggers['geo_location']['lat'], $projEPSG4326);
			$sourcePoint = clone $pointEPSG4326;
			$pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
			$sourcePoint = clone $pointEPSG4326;
			$pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);
		} else {
			switch ($triggers['projection_type']) {
				case BearsBiometryAnimalHandling::PT_3912:
					$pointEPSG3912 = new Point($triggers['EPSG_3912_x'], $triggers['EPSG_3912_y'], $projEPSG3912);
					$sourcePoint = clone $pointEPSG3912;
					$pointEPSG4326 = $proj4->transform($projEPSG4326, $sourcePoint);
					$sourcePoint = clone $pointEPSG3912;
					$pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);

					break;

				case BearsBiometryAnimalHandling::PT_4326:
					$pointEPSG4326 = new Point($triggers['EPSG_4326_x'], $triggers['EPSG_4326_y'], $projEPSG4326);
					$sourcePoint = clone $pointEPSG4326;
					$pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);
					$sourcePoint = clone $pointEPSG4326;
					$pointEPSG3794 = $proj4->transform($projEPSG3794, $sourcePoint);

					break;

				case BearsBiometryAnimalHandling::PT_3794:
					$pointEPSG3794 = new Point($triggers['EPSG_3794_x'], $triggers['EPSG_3794_y'], $projEPSG3794);
					$sourcePoint = clone $pointEPSG3794;
					$pointEPSG4326 = $proj4->transform($projEPSG4326, $sourcePoint);
					$sourcePoint = clone $pointEPSG3794;
					$pointEPSG3912 = $proj4->transform($projEPSG3912, $sourcePoint);

					break;
			}
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

		$dataFoundFlag = false;
		foreach ($results as $result) {
			$gid = $result->gid;

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
					spatial_unit_filter_type_versions
				on
					spatial_unit_filter_type_versions.id = spatial_unit_filter_elements.spatial_unit_filter_type_version_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_type_versions.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
				and
				    spatial_unit_filter_type_versions.valid_from <= ?
				and
					spatial_unit_filter_type_versions.valid_to >= ?
			', [$gid, '__-' . SpatialUnitFilterType::TYPE_HUNTING_MANAGEMENT_AREA, $USFormattedDate, $USFormattedDate]);

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
					spatial_unit_filter_type_versions
				on
					spatial_unit_filter_type_versions.id = spatial_unit_filter_elements.spatial_unit_filter_type_version_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_type_versions.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
				and
					spatial_unit_filter_type_versions.valid_from <= ?
				and
					spatial_unit_filter_type_versions.valid_to >= ?
			', [$gid, '__-' . SpatialUnitFilterType::TYPE_HUNTING_GROUND, $USFormattedDate, $USFormattedDate]);

			if (count($LUOResults) > 0) {
				$LUO = $LUOResults[0]->name;
				$LUO_id = $LUOResults[0]->spatial_unit_filter_element_id;
			}

			if (count($LOVResults) > 0) {
				$LOV = $LOVResults[0]->name;
			}

			if (count($LOVResults) > 0 && count($LUOResults) > 0) {
				$dataFoundFlag = true;
				break;
			}
		}

		if ($dataFoundFlag) {
			$payload = [
				'geo_input_method' => $triggers['geo_input_method'],
				'geo_location' => new Repository([
					'lng' => $pointEPSG4326->x,
					'lat' => $pointEPSG4326->y,
				]),
				'EPSG_3912_x' => $pointEPSG3912->x,
				'EPSG_3912_y' => $pointEPSG3912->y,
				'EPSG_3794_x' => $pointEPSG3794->x,
				'EPSG_3794_y' => $pointEPSG3794->y,
				'EPSG_4326_x' => $pointEPSG4326->x,
				'EPSG_4326_y' => $pointEPSG4326->y,
				'projection_type' => $triggers['projection_type'],
				'hunting_management_area' => $LUO ?? '',
				'hunting_management_area_id' => $LUO_id ?? null,
				'hunting_ground' => $LOV ?? '',
				'gid' => $gid,
				'place_of_removal' => $triggers['place_of_removal'],
				'place_type_list_id'      => $triggers['place_type_list_id'],
				'place_type_list_details' => $triggers['place_type_list_details'] ?? null,
				'animal_handling_date_date' => $triggers['animal_handling_date_date'] ?? null
			];
		} else {
			$payload = [
				'geo_input_method' => $triggers['geo_input_method'],
				'geo_location' => new Repository([
					'lat' => $pointEPSG4326->y,
					'lng' => $pointEPSG4326->x,
				]),
				'EPSG_3912_x' => $pointEPSG3912->x,
				'EPSG_3912_y' => $pointEPSG3912->y,
				'EPSG_3794_x' => $pointEPSG3794->x,
				'EPSG_3794_y' => $pointEPSG3794->y,
				'EPSG_4326_x' => $pointEPSG4326->x,
				'EPSG_4326_y' => $pointEPSG4326->y,
				'projection_type' => $triggers['projection_type'],
				'hunting_management_area' => 'N/A',
				'hunting_management_area_id' => $LUO_id ?? null,
				'hunting_ground' => 'N/A',
				'gid' => null,
				'place_of_removal' => $triggers['place_of_removal'],
				'place_type_list_id'      => $triggers['place_type_list_id'],
				'place_type_list_details' => $triggers['place_type_list_details'] ?? null,
				'animal_handling_date_date' => $triggers['animal_handling_date_date'] ?? null
			];
		}

		return [
			'bearsBiometryAnimalHandling' => $payload
		];
	}

	public function asyncUpdateAnimalHandlingHunterFinderSwitchListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'unknown_hunter_finder'      					=> $triggers['unknown_hunter_finder'],
				'hunter_finder_name_and_surname' 				=> $triggers['hunter_finder_name_and_surname'] ?? null,
				'hunter_finder_country_id' 						=> $triggers['hunter_finder_country_id'] ?? null,
				'witness_accompanying_person_name_and_surname' 	=> $triggers['witness_accompanying_person_name_and_surname'] ?? null,
				'taxidermist_name_and_surname' 					=> $triggers['taxidermist_name_and_surname'] ?? null,
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

	public function asyncUpdateAnimalHandlingToothSamplesListenerData($triggers)
	{
		return [
			'bearsBiometryAnimalHandling' => new Repository([
				'tooth_type_list_id'			=> $triggers['tooth_type_list_id'],
				'tooth_type_not_sampled_reason'	=> $triggers['tooth_type_not_sampled_reason'] ?? null,
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
		$preBiometryAnimalHandlingSampleListeners = [
			Layout::columns([
				BearsBiometryAnimalHandlingAnimalListener::class,

				BearsBiometryAnimalHandlingGeoLocationListener::class,
			]),

			BearsBiometryAnimalHandlingAnimalConflictednessListener::class,

			Layout::rows([
				Select::make('bearsBiometryAnimalHandling.licence_list_id')
					->fromModel(LicenceList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->title(__('Licence'))
					->help(__('Please select the Licence'))
					->empty(__('<Select>'))
					->required(),
			]),

			BearsBiometryAnimalHandlingHunterFinderSwitchListener::class,

			ToothSamplesListener::class,
		];

		$biometryAnimalHandlingSamplesListeners = [
			new BearsBiometryAnimalHandlingSamplesListener(self::MAX_SAMPLE_NUMBER)
		];

		$postBiometryAnimalHandlingSampleListeners = [
			AnimalHandlingSamplesLayout::class,

			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.measurer_name_and_surname')
					->title(__('Measurer name and surname')),

				Input::make('bearsBiometryAnimalHandling.hunting_ground_representative')
					->title(__('Hunting ground representative')),
			]),

			Layout::block([])
				->commands(
					[
						Button::make(__('Save animal handling'))
							->type(Color::DEFAULT())
							->icon('check')
							->method($this->action . 'AnimalHandlingAndDoNotAddBiometryData'),

						Button::make(__('Save animal handling and add biometry data'))
							->type(Color::DEFAULT())
							->icon('check')
							->method($this->action . 'AnimalHandlingAndAddBiometryData')
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

			Layout::view('mapExtender'),
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
		$animalHandlingStructure = $request->get('bearsBiometryAnimalHandling');

		Log::debug(['animalHandlingStructure' => $animalHandlingStructure]);

		if (!$animal->exists) {
			if (isset($animalHandlingStructure['animal_id'])) {
				$selectedAnimal = Animal::find($animalHandlingStructure['animal_id']);

				if (!isset($animalHandlingStructure['animal_status'])) {
					$animalHandlingStructure['animal_status'] = Animal::STR_DEAD;
				}

				$animalHandlingStructure['animal_name'] = $selectedAnimal->name;
				$animalHandlingStructure['animal_species_list_id'] = $selectedAnimal->species_list_id;
				$animalHandlingStructure['animal_sex_list_id'] = $selectedAnimal->sex_list_id;
				$animalHandlingStructure['animal_description'] = $selectedAnimal->description;
			}
		}

		if (!isset($animalHandlingStructure['animal_status'])) {
			$animalHandlingStructure['animal_status'] = Animal::STR_DEAD;
			$animalHandlingStructure['animal_status_on_handling'] = Animal::STR_DEAD;
		}

		if (!isset($animalHandlingStructure['animal_status_on_handling'])) {
			// the select is disabled
			$animalHandlingStructure['animal_status_on_handling'] = $animalHandlingStructure['animal_status'];
		}

		if (!isset($animalHandlingStructure['animal_name'])) {
			$animalHandlingStructure['animal_name'] = $animal->name;
		}

		$parsedDate = date_parse_from_format("j.n.Y", $animalHandlingStructure['animal_handling_date_date']);
		$parsedTime = date_parse_from_format("H:i", $animalHandlingStructure['animal_handling_date_time']);

		$phpAnimalHandlingDate = new DateTime($parsedDate['year'] . '-' . $parsedDate['month'] . '-' . $parsedDate['day'] . ' ' . $parsedTime['hour'] . ':' . $parsedTime['minute']);
		$animalHandlingStructure['animal_handling_date'] = $phpAnimalHandlingDate;

		$animalHandlingStructure['n_number_of_removal_in_the_hunting_administrative_area'] = str_replace('_', '', $animalHandlingStructure['n_number_of_removal_in_the_hunting_administrative_area'] ?? '');
		$animalHandlingStructure['y_number_of_removal_in_the_hunting_administrative_area'] = str_replace('_', '', $animalHandlingStructure['y_number_of_removal_in_the_hunting_administrative_area'] ?? '');
		$animalHandlingStructure['number_of_removal_in_the_hunting_administrative_area'] = $animalHandlingStructure['n_number_of_removal_in_the_hunting_administrative_area'] . '/' . $animalHandlingStructure['y_number_of_removal_in_the_hunting_administrative_area'];

		if ($animalHandlingStructure['number_of_removal_in_the_hunting_administrative_area'] == '/') {
			$animalHandlingStructure['number_of_removal_in_the_hunting_administrative_area'] = '';
		}

		Log::debug(['animalHandlingStructure' => $animalHandlingStructure]);

		$request->merge(['bearsBiometryAnimalHandling' => $animalHandlingStructure]);

		$request->validate([
			'bearsBiometryAnimalHandling.animal_handling_date' => 'required|date|before:now',
			'bearsBiometryAnimalHandling.n_number_of_removal_in_the_hunting_administrative_area' => 'numeric|min:1|max:999',
			'bearsBiometryAnimalHandling.y_number_of_removal_in_the_hunting_administrative_area' => 'numeric|min:2015|max:2040',
		]);

		if (isset($animalHandlingStructure['animal_died_at_date'])) {
			$parsedDate = date_parse_from_format("j.n.Y", $animalHandlingStructure['animal_died_at_date']);

			if (isset($animalHandlingStructure['animal_died_at_time'])) {
				$parsedTime = date_parse_from_format("H:i", $animalHandlingStructure['animal_died_at_time']);
			} else {
				$parsedTime = date_parse_from_format("H:i", '00:00');
			}

			$phpDate = new DateTime($parsedDate['year'] . '-' . $parsedDate['month'] . '-' . $parsedDate['day'] . ' ' . $parsedTime['hour'] . ':' . $parsedTime['minute']);
			$animalHandlingStructure['animal_died_at'] = $phpDate;

			$request->merge(['bearsBiometryAnimalHandling' => $animalHandlingStructure]);

			/*
			$request->validate([
				'bearsBiometryAnimalHandling.animal_died_at' => 'date|before:now',
			]);

			if (
				$animalHandlingStructure['animal_status'] == Animal::STR_DEAD &&
				(
					$animalHandlingStructure['animal_handling_type'] == BearsBiometryAnimalHandlingAnimalListener::STR_ANIMAL_TYPE_UNKNOWN_HANDLED_ALIVE ||
					$animalHandlingStructure['animal_handling_type'] == BearsBiometryAnimalHandlingAnimalListener::STR_ANIMAL_TYPE_KNOWN_HANDLED_ALIVE
				)
			) {
				$request->validate([
					'bearsBiometryAnimalHandling.animal_died_at' => 'date|after:' . $phpAnimalHandlingDate->format('Y-m-d H:i')
				]);
			} else {
				$request->validate([
					'bearsBiometryAnimalHandling.animal_died_at' => 'date|before:' . $phpAnimalHandlingDate->format('Y-m-d H:i')
				]);
			}
			*/
		}

		if ($bearsBiometryAnimalHandling == null || !$bearsBiometryAnimalHandling->exists) {
			// create new animal handling
			$bearsBiometryAnimalHandling = new BearsBiometryAnimalHandling();
		}

		$bearsBiometryAnimalHandling->fill($request->get('bearsBiometryAnimalHandling'));

		if ($animal->exists) { // this was an edit
			$animal->status = $request->get('bearsBiometryAnimalHandling')['animal_status'];
			Log::debug('animal exists');
		} elseif (!isset($bearsBiometryAnimalHandling['animal_id'])) {
			Log::debug('animal was not selected, so create a new animal');
			$animal = new Animal();

			$animal->fill([
				'status' => $request->get('bearsBiometryAnimalHandling')['animal_status'] ?? Animal::STR_DEAD,
				'name' => $request->get('bearsBiometryAnimalHandling')['animal_name'] ?? '',
				'species_list_id' => $request->get('bearsBiometryAnimalHandling')['animal_species_list_id'],
				'sex_list_id' => $request->get('bearsBiometryAnimalHandling')['animal_sex_list_id'],
				'description' => $request->get('bearsBiometryAnimalHandling')['animal_description'],
				'died_at' => $request->get('bearsBiometryAnimalHandling')['animal_died_at'] ?? null
			]);

			$animal->save();

			// assign a name if not assigned by the user
			if (!isset($request->get('bearsBiometryAnimalHandling')['animal_name']) || $request->get('bearsBiometryAnimalHandling')['animal_name'] == '') {
				$animal->fill(['name' => $animal->id]);
				$animal->save();
			}

			$bearsBiometryAnimalHandling['animal_id'] = $animal->id;
		} else {
			Log::debug('update selected animal');
			$animal = Animal::find($request->get('bearsBiometryAnimalHandling')['animal_id']);

			$animal['status'] = $request->get('bearsBiometryAnimalHandling')['animal_status'];
			$animal['died_at'] = $request->get('bearsBiometryAnimalHandling')['animal_died_at'] ?? null;

			$animal->save();
		}

		$bearsBiometryAnimalHandling->lat = $request->get('bearsBiometryAnimalHandling')['EPSG_4326_y'];
		$bearsBiometryAnimalHandling->lng = $request->get('bearsBiometryAnimalHandling')['EPSG_4326_x'];

		$bearsBiometryAnimalHandling->data_entered_by_user_id = Auth::user()->id;

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

		$bearsBiometryAnimalHandling->attachment()->syncWithoutDetaching(
			$request->input('bearsBiometryAnimalHandling.attachment', [])
		);

		Alert::info(__('You have successfully created or updated an Animal Handling.') . ' ' . __('Animal handling') . ' ID: ' . $bearsBiometryAnimalHandling->id . ' ' . __('Animal') . ' ID: ' . $animal->id . ' ' . __('Animal name') . ': ' . $animal->name);

		return $bearsBiometryAnimalHandling;
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

	public function createAnimalHandlingAndDoNotAddBiometryData(Request $request)
	{
		return $this->createOrUpdateAndDoNotAddBiometryData(new Animal(), new BearsBiometryAnimalHandling(), $request);
	}

	public function addAnimalHandlingAndDoNotAddBiometryData(Animal $animal, Request $request)
	{
		return $this->createOrUpdateAndDoNotAddBiometryData($animal, new BearsBiometryAnimalHandling(), $request);
	}

	public function editAnimalHandlingAndDoNotAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		return $this->createOrUpdateAndDoNotAddBiometryData($animal, $bearsBiometryAnimalHandling, $request);
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
		$bearsBiometryAnimalHandling = $this->createOrUpdate($animal, $bearsBiometryAnimalHandling, $request);

		return redirect()->route('platform.biometryData.add', [ $bearsBiometryAnimalHandling ]);
	}

	public function createAnimalHandlingAndAddBiometryData(Request $request)
	{
		return $this->createOrUpdateAndAddBiometryData(new Animal(), new BearsBiometryAnimalHandling(), $request);
	}

	public function addAnimalHandlingAndAddBiometryData(Animal $animal, Request $request)
	{
		return $this->createOrUpdateAndAddBiometryData($animal, new BearsBiometryAnimalHandling(), $request);
	}

	public function editAnimalHandlingAndAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
	{
		return $this->createOrUpdateAndAddBiometryData($animal, $bearsBiometryAnimalHandling, $request);
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
