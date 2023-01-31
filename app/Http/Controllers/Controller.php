<?php

namespace App\Http\Controllers;

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use App\Models\AnimalHandlingListView;
use App\Models\BearsBiometryData;
use League\Csv\Writer;

use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\Log;
use SplTempFileObject;

class Controller extends BaseController
{
	use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

	public function index()
	{
		$isAdmin = auth()->user() && auth()->user()->hasRole('mbase2l.admin');
		return view('dashboard', compact('isAdmin'));
	}

	public function exportAnimalHandlings()
	{
		$data = AnimalHandlingListView::filters()->get();
		// $payload = $data->map->only(['id', 'licence_number'])->values();
		foreach ($data as $animalHandlingListElement) {
			$row = [];
			// export animal related columns - 'id', 'species_list_id', 'sex_list_id', 'status', 'title', 'name', 'description'
			$animal = Animal::find($animalHandlingListElement->animal_id);
			$row[] = $animal->id;
			$row[] = $animal->species_list ? $animal->species_list->name : '';
			$row[] = $animal->sex_list ? $animal->sex_list->name : '';
			$row[] = $animal->statusString();
			$row[] = $animal->name;
			$row[] = $animal->description;
			$row[] = '';

			$animalHandling = BearsBiometryAnimalHandling::find($animalHandlingListElement->id);
			$row[] = $animalHandling->id;
			$row[] = $animal->way_of_withdrawal_list ? $animal->way_of_withdrawal_list->name : '';
			$row[] = $animalHandling->animal_conflictedness ? __('Yes') : __('No');
			$row[] = $animalHandling->animal_conflictedness_details;
			$row[] = $animalHandling->number_of_removal_in_the_hunting_administrative_area;
			$row[] = $animalHandling->conflict_animal_removal_list ? $animalHandling->conflict_animal_removal_list->name : '';
			$row[] = $animalHandling->licence_list ? $animalHandling->licence_list->name : '';
			$row[] = $animalHandling->licence_number;
			$row[] = $animalHandling->project_name;
			$row[] = $animalHandling->receiving_country;
			$row[] = $animalHandling->telemetry_uid;
			$row[] = $animalHandling->biometry_loss_reason_list ? $animalHandling->biometry_loss_reason_list->name : '';
			$row[] = $animalHandling->biometry_loss_reason_description;
			$row[] = $animalHandling->animal_handling_date;
			$row[] = $animalHandling->place_of_removal;
			$row[] = $animalHandling->place_type_list ? $animalHandling->place_type_list->name : '';
			$row[] = $animalHandling->place_type_list_details;
			$row[] = $animalHandling->lat;
			$row[] = $animalHandling->lng;
			$row[] = $animalHandling->hunting_management_area;
			$row[] = $animalHandling->hunter_finder_name_and_surname;
			$row[] = $animalHandling->hunter_finder_country ? $animalHandling->hunter_finder_country->name : '';
			$row[] = $animalHandling->witness_accompanying_person_name_and_surname;
			$row[] = $animalHandling->tooth_type_list ? $animalHandling->tooth_type_list->name : '';
			$row[] = $animalHandling->taxidermist_name_and_surname;
			$row[] = $animalHandling->hunting_ground;
			$row[] = $animalHandling->spatial_unit_gid;
			$row[] = $animalHandling->number_of_removal_in_the_hunting_administration_area;
			$row[] = $animalHandling->animal_status_on_handling;
			$row[] = '';

			if ($animalHandlingListElement->bears_biometry_data_id != null) {
				$biometricData = BearsBiometryData::find($animalHandlingListElement->bears_biometry_data_id);

				$row[] = $biometricData->id;
				$row[] = $biometricData->age;
				$row[] = $biometricData->masa_bruto;
				$row[] = $biometricData->masa_neto;
				$row[] = $biometricData->body_length;
				$row[] = $biometricData->shoulder_height;
				$row[] = $biometricData->head_circumference;
				$row[] = $biometricData->neck_circumference;
				$row[] = $biometricData->thorax_circumference;
				$row[] = $biometricData->abdomen_circumference;
				$row[] = $biometricData->baculum_length;
				$row[] = $biometricData->nipple_length;
				$row[] = $biometricData->teats_wear_list ? $biometricData->teats_wear_list->name : '';
				$row[] = $biometricData->tail_length;
				$row[] = $biometricData->ear_length_without_hair;
				$row[] = $biometricData->hair_tuft_length;
				$row[] = $biometricData->hind_left_paw_length;
				$row[] = $biometricData->hind_right_paw_length;
				$row[] = $biometricData->front_right_paw_length;
				$row[] = $biometricData->front_left_paw_length;
				$row[] = $biometricData->hind_left_paw_width;
				$row[] = $biometricData->hind_right_paw_width;
				$row[] = $biometricData->front_left_paw_width;
				$row[] = $biometricData->front_right_paw_width;
				$row[] = $biometricData->upper_left_canines;
				$row[] = $biometricData->upper_right_canines;
				$row[] = $biometricData->number_of_premolars_in_the_upper_jaw;
				$row[] = $biometricData->number_of_premolars_in_the_lower_jaw;
				$row[] = $biometricData->upper_left_canines_length;
				$row[] = $biometricData->lower_left_canines_length;
				$row[] = $biometricData->upper_right_canines_length;
				$row[] = $biometricData->lower_right_canines_length;
				$row[] = $biometricData->testicals_left_length;
				$row[] = $biometricData->testicals_left_width;
				$row[] = $biometricData->testicals_right_length;
				$row[] = $biometricData->testicals_right_width;
				$row[] = $biometricData->incisors_wear_list ? $biometricData->incisors_wear_list->name : '';
				$row[] = $biometricData->color_list ? $biometricData->color_list->name : '';
				$row[] = $biometricData->collar_list ? $biometricData->collar_list->name : '';
				$row[] = $biometricData->fur_pattern_in_lynx_list ? $biometricData->fur_pattern_in_lynx_list->name : '';
				$row[] = $biometricData->date_and_time_of_data_input;
				/* $row[] = $biometricData->depot;
				$row[] = $biometricData->status; */
			}

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			__('Animal ID'),
			__('Species'),
			__('Sex'),
			__('Status'),
			__('Name'),
			__('Description'), '',

			__('Animal handling ID'),
			__('Way of withdrawal'),
			__('Animal conflictedness'),
			__('Animal conflictedness details'),
			__('Number and the year of removal in hunting administrative area'),
			__('Type of conflict animal removal'),
			__('Licence'),
			__('Licence number'),
			__('Project name'),
			__('Receiving country and institutions'),
			__('Ear-tag number or radio-collar (telemetry) identification'),
			__('Loss reason'),
			__('Loss reason description'),
			__('Date and time of handling'),
			__('Geo location / Local name'),
			__('Place of removal type'),
			__('Other place of removal type'),
			__('Latitude'),
			__('Longitude'),
			__('Hunting-management area (LUO)'),
			__('Hunter/Finder name and surname'),
			__('Country'),
			__('Witness/Accompanying person name and surname'),
			__('Tooth Type'),
			__('Taxidermist name and surname'),
			__('Hunting ground'),
			__('spatial_unit_gid'),
			__('number_of_removal_in_the_hunting_administration_area'),
			__('Status on handling'), '',

			__('Biometry data'),
			__('Visual age estimate'),
			__('Body mass') . ' ' . __('Gross'),
			__('Body mass') . ' ' . __('Net'),
			__('Body length'),
			__('Shoulder height'),
			__('Head circumference'),
			__('Neck circumference'),
			__('Thorax circumference'),
			__('Abdomen circumference'),
			__('Length of os penis (penis bone - baculum)'),
			__('Nipple length'),
			__('Nipple use'),
			__('Tail length without hair'),
			__('Ear length without hair'),
			__('Length of hair tuft (for lynx only)'),
			__('Hind left paw length'),
			__('Hind right paw length'),
			__('Front left paw length'),
			__('Front right paw length'),
			__('Hind left paw width'),
			__('Hind right paw width'),
			__('Front left paw width'),
			__('Front right paw width'),

			'upper_left_canines_length', 'lower_left_canines_length', 'upper_right_canines_length', 'lower_right_canines_length',
			'number_of_premolars_in_the_upper_jaw', 'number_of_premolars_in_the_lower_jaw',
			'distance_between_upper_canines', 'distance_between_lower_canines',
			'testicals_left_length', 'testicals_left_width', 'testicals_right_length', 'testicals_right_width',
			'incisors_wear_list', 'color_list', 'collar_list', 'fur_pattern_in_lynx_list', 'date_and_time_of_data_input' /*, 'depot', 'status' */
		]);

		// The PDOStatement Object implements the Traversable Interface
		// that's why Writer::insertAll can directly insert
		// the data into the CSV
		$csv->insertAll($payload);

		// Because you are providing the filename you don't have to
		// set the HTTP headers Writer::output can
		// directly set them for you
		// The file is downloadable
		$csv->output('exportAnimalHandlings.csv');
		die;
	}

	public function exportAnimals()
	{
		$data = Animal::filters()->get();
		// $payload = $data->map->only(['id', 'licence_number'])->values();
		foreach ($data as $animal) {
			$row = [];
			// export animal related columns - 'id', 'species_list_id', 'sex_list_id', 'status', 'title', 'name', 'description'
			$row[] = $animal->id;
			$row[] = $animal->species_list ? $animal->species_list->name : '';
			$row[] = $animal->sex_list ? $animal->sex_list->name : '';
			$row[] = $animal->statusString();
			$row[] = $animal->name;
			$row[] = $animal->description;
			$row[] = '';

			$animalHandling = BearsBiometryAnimalHandling::where('animal_id', $animal->id)->orderBy('animal_handling_date')->first();
			$row[] = $animalHandling->id;
			$row[] = $animal->way_of_withdrawal_list ? $animal->way_of_withdrawal_list->name : '';
			$row[] = $animalHandling->animal_conflictedness ? __('Yes') : __('No');
			$row[] = $animalHandling->animal_conflictedness_details;
			$row[] = $animalHandling->number_of_removal_in_the_hunting_administrative_area;
			$row[] = $animalHandling->conflict_animal_removal_list ? $animalHandling->conflict_animal_removal_list->name : '';
			$row[] = $animalHandling->licence_list ? $animalHandling->licence_list->name : '';
			$row[] = $animalHandling->licence_number;
			$row[] = $animalHandling->project_name;
			$row[] = $animalHandling->receiving_country;
			$row[] = $animalHandling->telemetry_uid;
			$row[] = $animalHandling->biometry_loss_reason_list ? $animalHandling->biometry_loss_reason_list->name : '';
			$row[] = $animalHandling->biometry_loss_reason_description;
			$row[] = $animalHandling->animal_handling_date;
			$row[] = $animalHandling->place_of_removal;
			$row[] = $animalHandling->place_type_list ? $animalHandling->place_type_list->name : '';
			$row[] = $animalHandling->place_type_list_details;
			$row[] = $animalHandling->lat;
			$row[] = $animalHandling->lng;
			$row[] = $animalHandling->hunting_management_area;
			$row[] = $animalHandling->hunter_finder_name_and_surname;
			$row[] = $animalHandling->hunter_finder_country ? $animalHandling->hunter_finder_country->name : '';
			$row[] = $animalHandling->witness_accompanying_person_name_and_surname;
			$row[] = $animalHandling->tooth_type_list ? $animalHandling->tooth_type_list->name : '';
			$row[] = $animalHandling->taxidermist_name_and_surname;
			$row[] = $animalHandling->hunting_ground;
			$row[] = $animalHandling->spatial_unit_gid;
			$row[] = $animalHandling->number_of_removal_in_the_hunting_administration_area;
			$row[] = $animalHandling->animal_status_on_handling;
			$row[] = '';

			if ($animalHandling->bears_biometry_data_id != null) {
				$biometricData = BearsBiometryData::find($animalHandling->bears_biometry_data_id);

				$row[] = $biometricData->id;
				$row[] = $biometricData->age;
				$row[] = $biometricData->masa_bruto;
				$row[] = $biometricData->masa_neto;
				$row[] = $biometricData->body_length;
				$row[] = $biometricData->shoulder_height;
				$row[] = $biometricData->head_circumference;
				$row[] = $biometricData->neck_circumference;
				$row[] = $biometricData->thorax_circumference;
				$row[] = $biometricData->abdomen_circumference;
				$row[] = $biometricData->baculum_length;
				$row[] = $biometricData->nipple_length;
				$row[] = $biometricData->teats_wear_list ? $biometricData->teats_wear_list->name : '';
				$row[] = $biometricData->tail_length;
				$row[] = $biometricData->ear_length_without_hair;
				$row[] = $biometricData->hair_tuft_length;
				$row[] = $biometricData->hind_left_paw_length;
				$row[] = $biometricData->hind_right_paw_length;
				$row[] = $biometricData->front_right_paw_length;
				$row[] = $biometricData->front_left_paw_length;
				$row[] = $biometricData->hind_left_paw_width;
				$row[] = $biometricData->hind_right_paw_width;
				$row[] = $biometricData->front_left_paw_width;
				$row[] = $biometricData->front_right_paw_width;
				$row[] = $biometricData->upper_left_canines;
				$row[] = $biometricData->upper_right_canines;
				$row[] = $biometricData->number_of_premolars_in_the_upper_jaw;
				$row[] = $biometricData->number_of_premolars_in_the_lower_jaw;
				$row[] = $biometricData->upper_left_canines_length;
				$row[] = $biometricData->lower_left_canines_length;
				$row[] = $biometricData->upper_right_canines_length;
				$row[] = $biometricData->lower_right_canines_length;
				$row[] = $biometricData->testicals_left_length;
				$row[] = $biometricData->testicals_left_width;
				$row[] = $biometricData->testicals_right_length;
				$row[] = $biometricData->testicals_right_width;
				$row[] = $biometricData->incisors_wear_list ? $biometricData->incisors_wear_list->name : '';
				$row[] = $biometricData->color_list ? $biometricData->color_list->name : '';
				$row[] = $biometricData->collar_list ? $biometricData->collar_list->name : '';
				$row[] = $biometricData->fur_pattern_in_lynx_list ? $biometricData->fur_pattern_in_lynx_list->name : '';
				$row[] = $biometricData->date_and_time_of_data_input;
			}

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			__('Animal ID'),
			__('Species'),
			__('Sex'),
			__('Status'),
			__('Name'),
			__('Description'), ' ',

			__('Animal handling ID'),
			__('Way of withdrawal'),
			__('Animal conflictedness'),
			__('Animal conflictedness details'),
			__('Number and the year of removal in hunting administrative area'),
			__('Type of conflict animal removal'),
			__('Licence'),
			__('Licence number'),
			__('Project name'),
			__('Receiving country and institutions'),
			__('Ear-tag number or radio-collar (telemetry) identification'),
			__('Loss reason'),
			__('Loss reason description'),
			__('Date and time of handling'),
			__('Geo location / Local name'),
			__('Place of removal type'),
			__('Other place of removal type'),
			__('Latitude'),
			__('Longitude'),
			__('Hunting-management area (LUO)'),
			__('Hunter/Finder name and surname'),
			__('Country'),
			__('Witness/Accompanying person name and surname'),
			__('Tooth Type'),
			__('Taxidermist name and surname'),
			__('Hunting ground'),
			__('spatial_unit_gid'),
			__('number_of_removal_in_the_hunting_administration_area'),
			__('Status on handling'), '',

			__('Biometry data'),
			__('Visual age estimate'),
			__('Body mass') . ' ' . __('Gross'),
			__('Body mass') . ' ' . __('Net'),
			__('Body length'),
			__('Shoulder height'),
			__('Head circumference'),
			__('Neck circumference'),
			__('Thorax circumference'),
			__('Abdomen circumference'),
			__('Length of os penis (penis bone - baculum)'),
			__('Nipple length'),
			__('Nipple use'),
			__('Tail length without hair'),
			__('Ear length without hair'),
			__('Length of hair tuft (for lynx only)'),
			__('Hind left paw length'),
			__('Hind right paw length'),
			__('Front left paw length'),
			__('Front right paw length'),
			__('Hind left paw width'),
			__('Hind right paw width'),
			__('Front left paw width'),
			__('Front right paw width'),

			'upper_left_canines_length', 'lower_left_canines_length', 'upper_right_canines_length', 'lower_right_canines_length',
			'number_of_premolars_in_the_upper_jaw', 'number_of_premolars_in_the_lower_jaw',
			'distance_between_upper_canines', 'distance_between_lower_canines',
			'testicals_left_length', 'testicals_left_width', 'testicals_right_length', 'testicals_right_width',
			'incisors_wear_list', 'color_list', 'collar_list', 'fur_pattern_in_lynx_list', 'date_and_time_of_data_input' /*, 'depot', 'status' */
		]);

		// The PDOStatement Object implements the Traversable Interface
		// that's why Writer::insertAll can directly insert
		// the data into the CSV
		$csv->insertAll($payload);

		// Because you are providing the filename you don't have to
		// set the HTTP headers Writer::output can
		// directly set them for you
		// The file is downloadable
		$csv->output('exportAnimals.csv');
		die;
	}
}
