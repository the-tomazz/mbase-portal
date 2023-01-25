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
			$row[] = $animal->species_list_id;
			$row[] = $animal->species_list != null ?? $animal->species_list->name;
			$row[] = $animal->sex_list_id;
			$row[] = $animal->sex_list != null ?? $animal->sex_list->name;
			$row[] = $animal->status;
			$row[] = $animal->title;
			$row[] = $animal->name;
			$row[] = $animal->description;
			$row[] = '';

			$animalHandling = BearsBiometryAnimalHandling::find($animalHandlingListElement->id);
			$row[] = $animalHandling->id;
			$row[] = $animalHandling->way_of_withdrawal_list_id;
			$row[] = $animalHandling->way_of_withdrawal_list != null ?? $animalHandling->way_of_withdrawal_list->name;
			$row[] = $animalHandling->animal_conflictedness;
			$row[] = $animalHandling->animal_conflictedness_details;
			$row[] = $animalHandling->number_of_removal_in_the_hunting_administrative_area;
			$row[] = $animalHandling->conflict_animal_removal_list_id;
			$row[] = $animalHandling->conflict_animal_removal_list != null ?? $animalHandling->conflict_animal_removal_list->name;
			$row[] = $animalHandling->licence_list_id;
			$row[] = $animalHandling->licence_list != null ?? $animalHandling->licence_list->name;
			$row[] = $animalHandling->licence_number;
			$row[] = $animalHandling->project_name;
			$row[] = $animalHandling->receiving_country;
			$row[] = $animalHandling->telementry_uid;
			$row[] = $animalHandling->biometry_loss_reason_list_id;
			$row[] = $animalHandling->biometry_loss_reason_list != null ?? $animalHandling->biometry_loss_reason_list->name;
			$row[] = $animalHandling->biometry_loss_reason_description;
			$row[] = $animalHandling->animal_handling_date;
			$row[] = $animalHandling->date_and_time_of_biometry_measurements;
			$row[] = $animalHandling->place_of_removal;
			$row[] = $animalHandling->place_type_list_id;
			$row[] = $animalHandling->place_type_list != null ?? $animalHandling->place_type_list->name;
			$row[] = $animalHandling->place_type_list_details;
			$row[] = $animalHandling->lat;
			$row[] = $animalHandling->lng;
			$row[] = $animalHandling->hunting_management_area;
			$row[] = $animalHandling->hunting_management_area_id;
			$row[] = $animalHandling->hunter_finder_name_and_surname;
			$row[] = $animalHandling->hunter_finder_country_id;
			$row[] = $animalHandling->hunter_finder_country_id != null ?? $animalHandling->hunter_finder_country->name;
			$row[] = $animalHandling->witness_accompanying_person_name_and_surname;
			$row[] = $animalHandling->hair_sample_taken;
			$row[] = $animalHandling->hair_sample_taken_details;
			$row[] = $animalHandling->dna_sample_taken;
			$row[] = $animalHandling->dna_sample_taken_details;
			$row[] = $animalHandling->tooth_type_list_id;
			$row[] = $animalHandling->tooth_type_list_id != null ?? $animalHandling->tooth_type_list->name;
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
				$row[] = $biometricData->teats_wear_list_id;
				$row[] = $biometricData->teats_wear_list != null ?? $biometricData->teats_wear_list->name;
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
				$row[] = $biometricData->distance_between_upper_canines;
				$row[] = $biometricData->distance_between_lower_canines;
				$row[] = $biometricData->testicals_left_length;
				$row[] = $biometricData->testicals_left_width;
				$row[] = $biometricData->testicals_right_length;
				$row[] = $biometricData->testicals_right_width;
				$row[] = $biometricData->incisors_wear_list_id;
				$row[] = $biometricData->teats_wear_list != null ?? $biometricData->teats_wear_list->name;
				$row[] = $biometricData->color_list_id;
				$row[] = $biometricData->color_list != null ?? $biometricData->color_list->name;
				$row[] = $biometricData->collar_list_id;
				$row[] = $biometricData->collar_list != null ?? $biometricData->collar_list->name;
				$row[] = $biometricData->fur_pattern_in_lynx_list_id;
				$row[] = $biometricData->fur_pattern_in_lynx_list_id != null ?? $biometricData->fur_pattern_in_lynx_list_id->name;
				$row[] = $biometricData->date_and_time_of_data_input;
				$row[] = $biometricData->depot;
				$row[] = $biometricData->status;
			}

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			'animal_id', 'species_list_id', 'species', 'sex_list_id', 'sex', 'status', 'title', 'name', 'description', '',
			'animal_handling_id', 'way_of_withdrawal_list_id', 'way_of_withdrawal',
			'animal_conflictedness', 'animal_conflictedness_details', 'number_of_removal_in_the_hunting_administrative_area',
			'conflict_animal_removal_list_id', 'conflict_animal_removal', 'licence_list_id', 'licence_list', 'licence_number', 'project_name', 'receiving_country', 'telementry_uid', 'biometry_loss_reason_list_id', 'biometry_loss_reason_list', 'biometry_loss_reason_description', 'animal_handling_date', 'date_and_time_of_biometry_measurements','place_of_removal', 'place_type_list_id', 'place_type_lis', 'place_type_list_details', 'lat', 'lng', 'hunting_management_area', 'hunting_management_area_id', 'hunter_finder_name_and_surname', 'hunter_finder_country_id', 'hunter_finder_country', 'witness_accompanying_person_name_and_surname', 'hair_sample_taken', 'hair_sample_taken_details', 'dna_sample_taken', 'dna_sample_taken_details', 'tooth_type_list_id', 'tooth_type_list', 'taxidermist_name_and_surname', 'hunting_ground', 'spatial_unit_gid', 'number_of_removal_in_the_hunting_administration_area', 'animal_status_on_handling', ' ',
			'biometry_data_id', 'age', 'masa_bruto', 'masa_neto', 'body_length', 'shoulder_height', 'head_circumference', 'neck_circumference', 'thorax_circumference', 'abdomen_circumference', 'baculum_length', 'nipple_length', 'teats_wear_list_id', 'teats_wear_list', 'tail_length', 'ear_length_without_hair', 'hair_tuft_length', 'hind_left_paw_length', 'hind_right_paw_length', 'front_right_paw_length', 'front_left_paw_length', 'hind_left_paw_width', 'hind_right_paw_width', 'front_left_paw_width', 'front_right_paw_width',
			'upper_left_canines_length', 'lower_left_canines_length', 'upper_right_canines_length', 'lower_right_canines_length',
			'number_of_premolars_in_the_upper_jaw', 'number_of_premolars_in_the_lower_jaw',
			'distance_between_upper_canines', 'distance_between_lower_canines',
			'testicals_left_length', 'testicals_left_width', 'testicals_right_length', 'testicals_right_width',
			'incisors_wear_list_id', 'teats_wear_list', 'color_list_id', 'color_list', 'collar_list_id', 'collar_list', 'fur_pattern_in_lynx_list_id', 'fur_pattern_in_lynx_list', 'date_and_time_of_data_input', 'depot', 'status'
		]);

		// The PDOStatement Object implements the Traversable Interface
		// that's why Writer::insertAll can directly insert
		// the data into the CSV
		$csv->insertAll($payload);

		// Because you are providing the filename you don't have to
		// set the HTTP headers Writer::output can
		// directly set them for you
		// The file is downloadable
		$csv->output('export.csv');
		die;
	}
}
