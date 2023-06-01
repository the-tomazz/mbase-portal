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
use PhpOffice\PhpSpreadsheet\IOFactory;
use SplTempFileObject;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

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
		$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
		$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

		$data = AnimalHandlingListView::filters()
			->where(function ($query) use ($from, $to) {
				$query->whereDate('animal_handling_date', '>=', $from);
				$query->whereDate('animal_handling_date', '<=', $to);
				$query->orWhereNull('animal_handling_date');
			})->get();

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
			$row[] = $animalHandling->way_of_withdrawal_list ? $animalHandling->way_of_withdrawal_list->name : '';
			$row[] = $animalHandling->animal_conflictedness;
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
				$bearsBiometryData = BearsBiometryData::find($animalHandlingListElement->bears_biometry_data_id);

				$row[] = $bearsBiometryData->id;
				$row[] = $bearsBiometryData->age;
				$row[] = $bearsBiometryData->masa_bruto;
				$row[] = $bearsBiometryData->masa_neto;
				$row[] = $bearsBiometryData->body_length;
				$row[] = $bearsBiometryData->abdominal_length;
				$row[] = $bearsBiometryData->shoulder_height;
				$row[] = $bearsBiometryData->head_circumference;
				$row[] = $bearsBiometryData->neck_circumference;
				$row[] = $bearsBiometryData->thorax_circumference;
				$row[] = $bearsBiometryData->abdomen_circumference;
				$row[] = $bearsBiometryData->baculum_length;
				$row[] = $bearsBiometryData->nipple_length;
				$row[] = $bearsBiometryData->teats_wear_list ? $bearsBiometryData->teats_wear_list->name : '';
				$row[] = $bearsBiometryData->tail_length;
				$row[] = $bearsBiometryData->ear_length_without_hair;
				$row[] = $bearsBiometryData->observations_and_notes;
				$row[] = $bearsBiometryData->hair_tuft_length;
				$row[] = $bearsBiometryData->hind_left_paw_length;
				$row[] = $bearsBiometryData->hind_right_paw_length;
				$row[] = $bearsBiometryData->front_right_paw_length;
				$row[] = $bearsBiometryData->front_left_paw_length;
				$row[] = $bearsBiometryData->hind_left_paw_width;
				$row[] = $bearsBiometryData->hind_right_paw_width;
				$row[] = $bearsBiometryData->front_left_paw_width;
				$row[] = $bearsBiometryData->front_right_paw_width;
				$row[] = $bearsBiometryData->upper_left_canines;
				$row[] = $bearsBiometryData->upper_right_canines;
				$row[] = $bearsBiometryData->number_of_premolars_in_the_upper_jaw;
				$row[] = $bearsBiometryData->number_of_premolars_in_the_lower_jaw;
				$row[] = $bearsBiometryData->upper_left_canines_length;
				$row[] = $bearsBiometryData->lower_left_canines_length;
				$row[] = $bearsBiometryData->upper_right_canines_length;
				$row[] = $bearsBiometryData->lower_right_canines_length;
				$row[] = $bearsBiometryData->testicals_left_length;
				$row[] = $bearsBiometryData->testicals_left_width;
				$row[] = $bearsBiometryData->testicals_right_length;
				$row[] = $bearsBiometryData->testicals_right_width;
				$row[] = $bearsBiometryData->incisors_wear_list ? $bearsBiometryData->incisors_wear_list->name : '';
				$row[] = $bearsBiometryData->color_list ? $bearsBiometryData->color_list->name : '';
				$row[] = $bearsBiometryData->collar_list ? $bearsBiometryData->collar_list->name : '';
				$row[] = $bearsBiometryData->fur_pattern_in_lynx_list ? $bearsBiometryData->fur_pattern_in_lynx_list->name : '';
				$row[] = $bearsBiometryData->date_and_time_of_data_input;
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
			__('Description of conflictedness'),
			__('Number and the year of removal in hunting administrative area'),
			__('Type of conflict animal removal'),
			__('Licence'),
			__('Permit number'),
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
			__('Abdominal length'),
			__('Shoulder height'),
			__('Head circumference'),
			__('Neck circumference'),
			__('Thorax circumference'),
			__('Abdomen circumference'),
			__('Length of os penis (penis bone - baculum)'),
			__('Teats length'),
			__('Teats use'),
			__('Tail length without hair'),
			__('Ear length without hair'),
			__('Notes'),
			__('Length of hair tuft (for lynx only)'),
			__('Hind left paw length'),
			__('Hind right paw length'),
			__('Front left paw length'),
			__('Front right paw length'),
			__('Hind left paw width'),
			__('Hind right paw width'),
			__('Front left paw width'),
			__('Front right paw width'),

			__('Length of Upper left canines'),
			__('Length of Lower left canines'),
			__('Length of Upper right canines'),
			__('Length of Lower right canines'),

			__('Number of premolars in the Upper jaw (left + right)'),
			__('Number of premolars in the Lower jaw (left + right)'),
			__('Distance between upper canines'),
			__('Distance between lower canines'),
			__('Left testicle length'),
			__('Left testicle width'),
			__('Right testicle length'),
			__('Right testicle width'),

			__('Incisors (front teeth) wear'),
			__('Color'),
			__("Light neck stripe 'collar'"),
			__('Lynx coat pattern'),
			__('Date and time of data_input') /*, 'depot', 'status' */
		]);

		// The PDOStatement Object implements the Traversable Interface
		// that's why Writer::insertAll can directly insert
		// the data into the CSV
		$csv->insertAll($payload);

		// Because you are providing the filename you don't have to
		// set the HTTP headers Writer::output can
		// directly set them for you
		// The file is downloadable
		$csvString = $csv->toString();

		$spreadsheet = new Spreadsheet();
		$reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();

		/* Set CSV parsing options */
		$reader->setDelimiter(',');
		$reader->setEnclosure('"');
		$reader->setSheetIndex(0);

		/* Load a CSV file and save as a XLS */
		// $spreadsheet = $reader->load('../../uploads/test.csv');
		$spreadsheet = $reader->loadSpreadsheetFromString($csvString);
		$filename = 'Animal handlings ' . date("d.m.Y-Hi");

		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="'.$filename.'.xlsx"');
		header('Cache-Control: max-age=0');

		$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
		$writer->save('php://output');

		$spreadsheet->disconnectWorksheets();
		unset($spreadsheet);

		die;
	}

	public function exportAnimals()
	{
		$animalHandlingDateFrom = request()->input('animal_handling_date_from') ?? '1970-01-01';
		$animalHandlingDateTo = request()->input('animal_handling_date_to') ?? '2970-01-01';

		$from = request()->input('died_at_from') ?? '1970-01-01';
		$to = request()->input('died_at_to') ?? '2970-01-01';

		$data = Animal::filters()
			->where(function ($query) use ($from, $to) {
				$query->whereDate('died_at', '>=', $from);
				$query->whereDate('died_at', '<=', $to);
				$query->orWhereNull('died_at');
			})->get();

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

			$animalHandlingCount = $animal->bearsBiometryAnimalHandlings()
				->where(function ($query) use ($animalHandlingDateFrom, $animalHandlingDateTo) {
					$query->whereDate('animal_handling_date', '>=', $animalHandlingDateFrom);
					$query->whereDate('animal_handling_date', '<=', $animalHandlingDateTo);
				})
				->where('animal_id', $animal->id)
				->get()
				->count();

			$animalHandling = $animal->bearsBiometryAnimalHandlings()
				->where(function ($query) use ($animalHandlingDateFrom, $animalHandlingDateTo) {
					$query->whereDate('animal_handling_date', '>=', $animalHandlingDateFrom);
					$query->whereDate('animal_handling_date', '<=', $animalHandlingDateTo);
				})
				->where('animal_id', $animal->id)
				->orderBy('animal_handling_date')
				->first();

			if ($animalHandling != null) {
				$row[] = $animalHandling->id;
				$row[] = $animalHandlingCount;
				$row[] = $animalHandling->animal_handling_date;
				$row[] = $animalHandling->way_of_withdrawal_list ? $animalHandling->way_of_withdrawal_list->name : '';
				$row[] = $animalHandling->animal_conflictedness;
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

				$bearsBiometryData = BearsBiometryData::where('bears_biometry_animal_handling_id', '=', $animalHandling->id)
					->first();

				if ($bearsBiometryData) {
					$row[] = $bearsBiometryData->id;
					$row[] = $bearsBiometryData->age;
					$row[] = $bearsBiometryData->masa_bruto;
					$row[] = $bearsBiometryData->masa_neto;
					$row[] = $bearsBiometryData->body_length;
					$row[] = $bearsBiometryData->shoulder_height;
					$row[] = $bearsBiometryData->head_circumference;
					$row[] = $bearsBiometryData->neck_circumference;
					$row[] = $bearsBiometryData->thorax_circumference;
					$row[] = $bearsBiometryData->abdomen_circumference;
					$row[] = $bearsBiometryData->baculum_length;
					$row[] = $bearsBiometryData->nipple_length;
					$row[] = $bearsBiometryData->teats_wear_list ? $bearsBiometryData->teats_wear_list->name : '';
					$row[] = $bearsBiometryData->tail_length;
					$row[] = $bearsBiometryData->ear_length_without_hair;
					$row[] = $bearsBiometryData->observations_and_notes;
					$row[] = $bearsBiometryData->hair_tuft_length;
					$row[] = $bearsBiometryData->hind_left_paw_length;
					$row[] = $bearsBiometryData->hind_right_paw_length;
					$row[] = $bearsBiometryData->front_right_paw_length;
					$row[] = $bearsBiometryData->front_left_paw_length;
					$row[] = $bearsBiometryData->hind_left_paw_width;
					$row[] = $bearsBiometryData->hind_right_paw_width;
					$row[] = $bearsBiometryData->front_left_paw_width;
					$row[] = $bearsBiometryData->front_right_paw_width;
					$row[] = $bearsBiometryData->upper_left_canines;
					$row[] = $bearsBiometryData->upper_right_canines;
					$row[] = $bearsBiometryData->number_of_premolars_in_the_upper_jaw;
					$row[] = $bearsBiometryData->number_of_premolars_in_the_lower_jaw;
					$row[] = $bearsBiometryData->upper_left_canines_length;
					$row[] = $bearsBiometryData->lower_left_canines_length;
					$row[] = $bearsBiometryData->upper_right_canines_length;
					$row[] = $bearsBiometryData->lower_right_canines_length;
					$row[] = $bearsBiometryData->testicals_left_length;
					$row[] = $bearsBiometryData->testicals_left_width;
					$row[] = $bearsBiometryData->testicals_right_length;
					$row[] = $bearsBiometryData->testicals_right_width;
					$row[] = $bearsBiometryData->incisors_wear_list ? $bearsBiometryData->incisors_wear_list->name : '';
					$row[] = $bearsBiometryData->color_list ? $bearsBiometryData->color_list->name : '';
					$row[] = $bearsBiometryData->collar_list ? $bearsBiometryData->collar_list->name : '';
					$row[] = $bearsBiometryData->fur_pattern_in_lynx_list ? $bearsBiometryData->fur_pattern_in_lynx_list->name : '';
					$row[] = $bearsBiometryData->date_and_time_of_data_input;
				}
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
			__('# of animal handlings'),
			__('Date and time of handling'),
			__('Way of withdrawal'),
			__('Animal conflictedness'),
			__('Description of conflictedness'),
			__('Number and the year of removal in hunting administrative area'),
			__('Type of conflict animal removal'),
			__('Licence'),
			__('Permit number'),
			__('Project name'),
			__('Receiving country and institutions'),
			__('Ear-tag number or radio-collar (telemetry) identification'),
			__('Loss reason'),
			__('Loss reason description'),
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
			__('Abdominal length'),
			__('Shoulder height'),
			__('Head circumference'),
			__('Neck circumference'),
			__('Thorax circumference'),
			__('Abdomen circumference'),
			__('Length of os penis (penis bone - baculum)'),
			__('Teats length'),
			__('Teats use'),
			__('Tail length without hair'),
			__('Ear length without hair'),
			__('Notes'),
			__('Length of hair tuft (for lynx only)'),
			__('Hind left paw length'),
			__('Hind right paw length'),
			__('Front left paw length'),
			__('Front right paw length'),
			__('Hind left paw width'),
			__('Hind right paw width'),
			__('Front left paw width'),
			__('Front right paw width'),

			__('Length of Upper left canines'),
			__('Length of Lower left canines'),
			__('Length of Upper right canines'),
			__('Length of Lower right canines'),

			__('Number of premolars in the Upper jaw (left + right)'),
			__('Number of premolars in the Lower jaw (left + right)'),
			__('Distance between upper canines'),
			__('Distance between lower canines'),
			__('Left testicle length'),
			__('Left testicle width'),
			__('Right testicle length'),
			__('Right testicle width'),

			__('Incisors (front teeth) wear'),
			__('Color'),
			__("Light neck stripe 'collar'"),
			__('Lynx coat pattern'),
			__('Date and time of data_input') /*, 'depot', 'status' */
		]);

		// The PDOStatement Object implements the Traversable Interface
		// that's why Writer::insertAll can directly insert
		// the data into the CSV
		$csv->insertAll($payload);

		// Because you are providing the filename you don't have to
		// set the HTTP headers Writer::output can
		// directly set them for you
		// The file is downloadable
		$csvString = $csv->toString();

		$spreadsheet = new Spreadsheet();
		$reader = new \PhpOffice\PhpSpreadsheet\Reader\Csv();

		/* Set CSV parsing options */
		$reader->setDelimiter(',');
		$reader->setEnclosure('"');
		$reader->setSheetIndex(0);

		/* Load a CSV file and save as a XLS */
		// $spreadsheet = $reader->load('../../uploads/test.csv');
		$spreadsheet = $reader->loadSpreadsheetFromString($csvString);
		$filename = 'Animals ' . date("d.m.Y-Hi");

		header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
		header('Content-Disposition: attachment;filename="'.$filename.'.xlsx"');
		header('Cache-Control: max-age=0');

		$writer = IOFactory::createWriter($spreadsheet, 'Xlsx');
		$writer->save('php://output');

		$spreadsheet->disconnectWorksheets();
		unset($spreadsheet);

		die;
	}
}
