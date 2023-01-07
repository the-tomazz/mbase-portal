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
			// export animal related columns - 'id', 'species_list_id', 'sex_list_id', 'status', 'previous_status', 'title', 'name', 'description'
			$animal = Animal::find($animalHandlingListElement->animal_id);
			$row[] = $animal->id;
			$row[] = $animal->species_list_id;
			$row[] = $animal->species_list != null ?? $animal->species_list->name;
			$row[] = $animal->sex_list_id;
			$row[] = $animal->sex_list != null ?? $animal->sex_list->name;
			$row[] = $animal->status;
			$row[] = $animal->previous_status;
			$row[] = $animal->title;
			$row[] = $animal->name;
			$row[] = $animal->description;
			$row[] = '';

			$animalHandling = BearsBiometryAnimalHandling::find($animalHandlingListElement->id);
			$row[] = $animalHandling->id;
			$row[] = $animalHandling->way_of_withdrawal_list_id;
			$row[] = $animalHandling->way_of_withdrawal_list != null ?? $animalHandling->way_of_withdrawal_list->name;
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
			$row[] = $animalHandling->place_of_removal;
			$row[] = $animalHandling->place_type_list_id;
			$row[] = $animalHandling->place_type_list != null ?? $animalHandling->place_type_list->name;
			$row[] = $animalHandling->place_type_list_details;
			$row[] = $animalHandling->lat;
			$row[] = $animalHandling->lng;
			$row[] = $animalHandling->hunting_management_area;
			$row[] = $animalHandling->hunting_management_area_id;
			$row[] = $animalHandling->hunter_finder_name;
			$row[] = $animalHandling->hunter_finder_surname;
			$row[] = $animalHandling->hunter_finder_address;
			$row[] = $animalHandling->hunter_finder_country_id;
			$row[] = $animalHandling->witness_accompanying_person_name;
			$row[] = $animalHandling->witness_accompanying_person_surname;
			$row[] = $animalHandling->sample_taken;
			$row[] = $animalHandling->blood_sample_taken;
			$row[] = $animalHandling->tooth_type_list_id;
			$row[] = $animalHandling->tooth_type_list != null ?? $animalHandling->tooth_type_list_id->name;
			$row[] = $animalHandling->taxidermist_name;
			$row[] = $animalHandling->taxidermist_surname;
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
				$row[] = $biometricData->hrbtna_dolzina;
				$row[] = $biometricData->trebusna_dolzina;
				$row[] = $biometricData->plecna_visina;
				$row[] = $biometricData->obseg_glave;
				$row[] = $biometricData->obseg_vratu;
				$row[] = $biometricData->obseg_prsnega_kosa;
				$row[] = $biometricData->obseg_trebuha;
				$row[] = $biometricData->dolzina_spolne_kosti;
				$row[] = $biometricData->dolzina_seskov;
				$row[] = $biometricData->teats_wear_list_id;
				$row[] = $biometricData->teats_wear_list != null ?? $biometricData->teats_wear_list->name;
				$row[] = $biometricData->dolzina_repa_prva_meritev;
				$row[] = $biometricData->dolzina_repa_druga_meritev;
				$row[] = $biometricData->dolzina_usesov;
				$row[] = $biometricData->dolzina_copkov;
				$row[] = $biometricData->dzs_leva;
				$row[] = $biometricData->dzs_desna;
				$row[] = $biometricData->dps_desna;
				$row[] = $biometricData->dps_leva;
				$row[] = $biometricData->szs_leva;
				$row[] = $biometricData->szs_desna;
				$row[] = $biometricData->sps_leva;
				$row[] = $biometricData->sps_desna;
				$row[] = $biometricData->dzp_leva;
				$row[] = $biometricData->dzp_desna;
				$row[] = $biometricData->dsp_leva;
				$row[] = $biometricData->dsp_desna;
				$row[] = $biometricData->sp_zgoraj;
				$row[] = $biometricData->sp_spodaj;
				$row[] = $biometricData->incisors_wear_list_id;
				$row[] = $biometricData->teats_wear_list != null ?? $biometricData->teats_wear_list->name;
				$row[] = $biometricData->color_list_id;
				$row[] = $biometricData->color_list != null ?? $biometricData->color_list->name;
				$row[] = $biometricData->collar_list_id;
				$row[] = $biometricData->collar_list != null ?? $biometricData->collar_list->name;
				$row[] = $biometricData->opombe;
				$row[] = $biometricData->cas_biometrije;
				$row[] = $biometricData->cas_vnosa;
				$row[] = $biometricData->depot;
				$row[] = $biometricData->status;
			}

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			'animal_id', 'species_list_id', 'specie', 'sex_list_id', 'sex', 'status', 'previous_status', 'title', 'name', 'description', '',
			'animal_handling_id', 'way_of_withdrawal_list_id', 'way_of_withdrawal', 'conflict_animal_removal_list_id', 'conflict_animal_removal', 'licence_list_id', 'licence_list', 'licence_number', 'project_name', 'receiving_country', 'telementry_uid', 'biometry_loss_reason_list_id', 'biometry_loss_reason_list', 'biometry_loss_reason_description', 'animal_handling_date', 'place_of_removal', 'place_type_list_id', 'place_type_lis', 'place_type_list_details', 'lat', 'lng', 'hunting_management_area', 'hunting_management_area_id', 'hunter_finder_name', 'hunter_finder_surname', 'hunter_finder_address', 'hunter_finder_country_id', 'witness_accompanying_person_name', 'witness_accompanying_person_surname', 'sample_taken', 'blood_sample_taken', 'tooth_type_list_id', 'tooth_type_list', 'taxidermist_name', 'taxidermist_surname', 'hunting_ground', 'spatial_unit_gid', 'number_of_removal_in_the_hunting_administration_area', 'animal_status_on_handling', ' ',
			'biometry_data_id', 'age', 'masa_bruto', 'masa_neto', 'hrbtna_dolzina', 'trebusna_dolzina', 'plecna_visina', 'obseg_glave', 'obseg_vratu', 'obseg_prsnega_kosa', 'obseg_trebuha', 'dolzina_spolne_kosti', 'dolzina_seskov', 'teats_wear_list_id', 'teats_wear_list', 'dolzina_repa_prva_meritev', 'dolzina_repa_druga_meritev', 'dolzina_usesov', 'dolzina_copkov', 'dzs_leva', 'dzs_desna', 'dps_desna', 'dps_leva', 'szs_leva', 'szs_desna', 'sps_leva', 'sps_desna', 'dzp_leva', 'dzp_desna', 'dsp_leva', 'dsp_desna', 'sp_zgoraj', 'sp_spodaj', 'incisors_wear_list_id', 'teats_wear_list', 'color_list_id', 'color_list', 'collar_list_id', 'collar_list', 'opombe', 'cas_biometrije', 'cas_vnosa', 'depot', 'status'
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
