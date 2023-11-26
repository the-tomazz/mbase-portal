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
use PhpOffice\PhpSpreadsheet\Shared\Date;
use SplTempFileObject;

use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
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
			$animalHandling = BearsBiometryAnimalHandling::find($animalHandlingListElement->id);
			$isAnimalHandling = $animalHandling != null;
			$isBiometryData = $isAnimalHandling && $animalHandlingListElement->bears_biometry_data_id != null;

			if ($isBiometryData) {
				$bearsBiometryData = BearsBiometryData::find($animalHandlingListElement->bears_biometry_data_id);
			}

			$row[] = $animal->id;
			$row[] = $isAnimalHandling ? $animalHandling->id : '';
			$row[] = $isAnimalHandling ? $animalHandling->animal_handling_date->format('Y-m-d') : '';
			$row[] = $animal->species_list ? $animal->species_list->name : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunting_management_area : '';
			$row[] = $isAnimalHandling ? $animalHandling->number_of_removal_in_the_hunting_administrative_area : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunting_ground : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->way_of_withdrawal_list ? $animalHandling->way_of_withdrawal_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->conflict_animal_removal_list ? $animalHandling->conflict_animal_removal_list->name : '' ) : '';
			$row[] = $isAnimalHandling ?
				$animalHandling->animal_conflictedness == BearsBiometryAnimalHandling::CONFLICTEDNESS_UNKNOWN
				? __('Unknown')
				: __('Conflicting') : __('Unknown');
			$row[] = $isAnimalHandling ? $animalHandling->animal_conflictedness_details : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->biometry_loss_reason_list ? $animalHandling->biometry_loss_reason_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->biometry_loss_reason_description : '';
			$row[] = $isAnimalHandling ? $animalHandling->place_of_removal : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->place_type_list ? $animalHandling->place_type_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->place_type_list_details : '';
			$row[] = $isAnimalHandling ? $animalHandling->lat : '';
			$row[] = $isAnimalHandling ? $animalHandling->lng : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->location_coordinate_type_list ? $animalHandling->location_coordinate_type_list->name : '' ) : '';
			$row[] = $animal->sex_list ? $animal->sex_list->name : '';
			$row[] = $isBiometryData ? $bearsBiometryData->age : '';
			$row[] = $isBiometryData ? $bearsBiometryData->masa_bruto : '';
			$row[] = $isBiometryData ? $bearsBiometryData->masa_neto : '';
			if ($isAnimalHandling) {
				$user = User::find($animalHandling->data_entered_by_user_id);
				$row[] = $user ? $user->name : '';
			}
			$row[] = $isAnimalHandling ? $animalHandling->licence_number : '';
			$row[] = $animal->description;
			$row[] = $animal->died_at ? $animal->died_at->format('Y-m-d') : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->hunter_finder_country ? $animalHandling->hunter_finder_country->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunter_finder_name_and_surname : '';
			$row[] = $isAnimalHandling ? $animalHandling->witness_accompanying_person_name_and_surname : '';
			$row[] = $isAnimalHandling ? $animalHandling->taxidermist_name_and_surname : '';
			$row[] = $animal->statusString();
			$row[] = $isAnimalHandling ? $animalHandling->statusOnHandlingString() : '';

			$row[] = $isBiometryData ? $bearsBiometryData->id : '';

			$row[] = $isBiometryData ? $bearsBiometryData->body_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->shoulder_height : '';
			$row[] = $isBiometryData ? $bearsBiometryData->head_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->neck_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->thorax_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->abdomen_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->baculum_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->nipple_length : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->teats_wear_list ? $bearsBiometryData->teats_wear_list->name : '' ) : '';
			$row[] = $isBiometryData ? $bearsBiometryData->tail_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->ear_length_without_hair : '';
			$row[] = $isBiometryData ? $bearsBiometryData->observations_and_notes : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hair_tuft_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_left_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_right_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_right_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_left_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_left_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_right_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_left_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_right_paw_width : '';
			# $row[] = $isBiometryData ? $bearsBiometryData->upper_left_canines : '';
			# $row[] = $isBiometryData ? $bearsBiometryData->upper_right_canines : '';
			$row[] = $isBiometryData ? $bearsBiometryData->upper_left_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->lower_left_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->upper_right_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->lower_right_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->number_of_premolars_in_the_upper_jaw : '';
			$row[] = $isBiometryData ? $bearsBiometryData->number_of_premolars_in_the_lower_jaw : '';
			$row[] = $isBiometryData ? $bearsBiometryData->distance_between_upper_canines : '';
			$row[] = $isBiometryData ? $bearsBiometryData->distance_between_lower_canines : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->tooth_type_list ? $animalHandling->tooth_type_list->name : '' ) : '';

			$row[] = $isAnimalHandling ? ( count($animalHandling->bearsBiometrySamples)>0 ? __('Yes') : __('No') ) : '';

			$row[] = $isBiometryData ? $bearsBiometryData->testicals_left_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_left_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_right_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_right_width : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->incisors_wear_list ? $bearsBiometryData->incisors_wear_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->color_list ? $bearsBiometryData->color_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->collar_list ? $bearsBiometryData->collar_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->fur_pattern_in_lynx_list ? $bearsBiometryData->fur_pattern_in_lynx_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->licence_list ? $animalHandling->licence_list->name : '' ) : '';
			$row[] = $animal->name;
			$row[] = $isAnimalHandling ? $animalHandling->project_name : '';
			$row[] = $isAnimalHandling ? $animalHandling->receiving_country : '';
			$row[] = $isAnimalHandling ? $animalHandling->telemetry_uid : '';

			$row[] = $isAnimalHandling ? $animalHandling->created_at->format('Y-m-d') : '';
			$row[] = $isAnimalHandling ? $animalHandling->updated_at->format('Y-m-d') : '';

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			__('Animal ID'),
			__('Animal handling ID'),
			__('Animal handling date'),
			__('Species'),
			__('Hunting-management area (LUO)'),
			__('Number and the year of removal in hunting administrative area'),
			__('Hunting ground'),
			__('Way of withdrawal'),
			__('Type of legal cull'),
			__('Animal conflictedness'),
			__('Description of conflictedness'),
			__('Loss reason'),
			__('Loss reason description'),
			__('Geo location / Local name'),
			__('Place of removal type'),
			__('Other place of removal type'),
			__('Latitude'),
			__('Longitude'),
			__('Location Coordinate Type'),
			__('Sex'),
			__('Visual age estimate'),
			__('Body mass') . ' ' . __('Gross'),
			__('Body mass') . ' ' . __('Net'),
			__('User'),
			__('Permit number'),
			__('Description'),
			__('Date and time of death'),
			__('Hunter/Finder country'),
			__('Hunter/Finder name and surname'),
			__('Witness/Accompanying person name and surname'),
			__('Taxidermist name and surname'),
			__('Animal status'),
			__('Status on handling'),

			__('Biometry Data ID'),
			__('Body length'),
			# __('Abdominal length'),
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
			__('Physical condition, parasites, injuries, markings, other observations (ear tags, signs of crossbreeding with a dog, etc.) and notes'),
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

			__('Tooth Type'),

			__('Genetic samples taken YES/NO'),
			__('Left testicle length'),
			__('Left testicle width'),
			__('Right testicle length'),
			__('Right testicle width'),

			__('Incisors (front teeth) wear'),
			__('Color'),
			__("Light neck stripe 'collar'"),
			__('Lynx coat pattern'),

			__('Licence'),
			__('Animal name'),
			__('Project name'),
			__('Receiving country and institutions'),
			__('Ear-tag number or radio-collar (telemetry) identification'),
			__('Created at'), /*, 'depot', 'status' */
			__('Updated at')
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

		$spreadsheet = $reader->loadSpreadsheetFromString($csvString);

		$worksheet = $spreadsheet->getSheet(0);

		$columnsToBeFormattedAsDate = ['C', 'AA', 'CA', 'CB'];
		foreach ($columnsToBeFormattedAsDate as $column) {
			$worksheet->getStyle($column . '1:' . $column . count($payload)+2)
				->getNumberFormat()
				->setFormatCode(
					NumberFormat::FORMAT_DATE_DMYMINUS
				);

			foreach ($payload as $rowNumber => $row) {
				$stringDate = $worksheet->getCell($column  . ($rowNumber + 2))->getValue();
				$excelDateValue = Date::PHPToExcel($stringDate);
				$worksheet->setCellValue($column . ($rowNumber + 2), $excelDateValue);
			}
		}

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

			$isAnimalHandling = $animalHandling != null;
			$isBiometryData = false;

			if ($isAnimalHandling) {
				$bearsBiometryData = BearsBiometryData::where('bears_biometry_animal_handling_id', '=', $animalHandling->id)->first();
				if ($bearsBiometryData) {
					$isBiometryData = true;
				}
			}

			$row = [];
			// export animal related columns - 'id', 'species_list_id', 'sex_list_id', 'status', 'title', 'name', 'description'
			$row[] = $animal->id;
			$row[] = $isAnimalHandling ? $animalHandling->id : '';
			$row[] = $isAnimalHandling ? $animalHandling->animal_handling_date->format('Y-m-d') : '';
			$row[] = $animal->species_list ? $animal->species_list->name : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunting_management_area : '';
			$row[] = $isAnimalHandling ? $animalHandling->number_of_removal_in_the_hunting_administrative_area : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunting_ground : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->way_of_withdrawal_list ? $animalHandling->way_of_withdrawal_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->conflict_animal_removal_list ? $animalHandling->conflict_animal_removal_list->name : '' ) : '';
			$row[] = $isAnimalHandling ?
				$animalHandling->animal_conflictedness == BearsBiometryAnimalHandling::CONFLICTEDNESS_UNKNOWN
				? __('Unknown')
				: __('Conflicting') : __('Unknown');
			$row[] = $isAnimalHandling ? $animalHandling->animal_conflictedness_details : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->biometry_loss_reason_list ? $animalHandling->biometry_loss_reason_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->biometry_loss_reason_description : '';
			$row[] = $isAnimalHandling ? $animalHandling->place_of_removal : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->place_type_list ? $animalHandling->place_type_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->place_type_list_details : '';
			$row[] = $isAnimalHandling ? $animalHandling->lat : '';
			$row[] = $isAnimalHandling ? $animalHandling->lng : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->location_coordinate_type_list ? $animalHandling->location_coordinate_type_list->name : '' ) : '';
			$row[] = $animal->sex_list ? $animal->sex_list->name : '';
			$row[] = $isBiometryData ? $bearsBiometryData->age : '';
			$row[] = $isBiometryData ? $bearsBiometryData->masa_bruto : '';
			$row[] = $isBiometryData ? $bearsBiometryData->masa_neto : '';
			if ($isAnimalHandling) {
				$user = User::find($animalHandling->data_entered_by_user_id);
				$row[] = $user ? $user->name : '';
			}
			$row[] = $isAnimalHandling ? $animalHandling->licence_number : '';
			$row[] = $animal->description;
			$row[] = $animal->died_at ? $animal->died_at->format('Y-m-d') : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->hunter_finder_country ? $animalHandling->hunter_finder_country->name : '' ) : '';
			$row[] = $isAnimalHandling ? $animalHandling->hunter_finder_name_and_surname : '';
			$row[] = $isAnimalHandling ? $animalHandling->witness_accompanying_person_name_and_surname : '';
			$row[] = $isAnimalHandling ? $animalHandling->taxidermist_name_and_surname : '';
			$row[] = $animal->statusString();
			$row[] = $isAnimalHandling ? $animalHandling->statusOnHandlingString() : '';

			$row[] = $isBiometryData ? $bearsBiometryData->id : '';

			$row[] = $isBiometryData ? $bearsBiometryData->body_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->shoulder_height : '';
			$row[] = $isBiometryData ? $bearsBiometryData->head_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->neck_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->thorax_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->abdomen_circumference : '';
			$row[] = $isBiometryData ? $bearsBiometryData->baculum_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->nipple_length : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->teats_wear_list ? $bearsBiometryData->teats_wear_list->name : '' ) : '';
			$row[] = $isBiometryData ? $bearsBiometryData->tail_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->ear_length_without_hair : '';
			$row[] = $isBiometryData ? $bearsBiometryData->observations_and_notes : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hair_tuft_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_left_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_right_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_right_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_left_paw_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_left_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->hind_right_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_left_paw_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->front_right_paw_width : '';
			# $row[] = $isBiometryData ? $bearsBiometryData->upper_left_canines : '';
			# $row[] = $isBiometryData ? $bearsBiometryData->upper_right_canines : '';
			$row[] = $isBiometryData ? $bearsBiometryData->upper_left_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->lower_left_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->upper_right_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->lower_right_canines_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->number_of_premolars_in_the_upper_jaw : '';
			$row[] = $isBiometryData ? $bearsBiometryData->number_of_premolars_in_the_lower_jaw : '';
			$row[] = $isBiometryData ? $bearsBiometryData->distance_between_upper_canines : '';
			$row[] = $isBiometryData ? $bearsBiometryData->distance_between_lower_canines : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->tooth_type_list ? $animalHandling->tooth_type_list->name : '' ) : '';

			$row[] = $isAnimalHandling ? ( count($animalHandling->bearsBiometrySamples)>0 ? __('Yes') : __('No') ) : '';

			$row[] = $isBiometryData ? $bearsBiometryData->testicals_left_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_left_width : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_right_length : '';
			$row[] = $isBiometryData ? $bearsBiometryData->testicals_right_width : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->incisors_wear_list ? $bearsBiometryData->incisors_wear_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->color_list ? $bearsBiometryData->color_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->collar_list ? $bearsBiometryData->collar_list->name : '' ) : '';
			$row[] = $isBiometryData ? ( $bearsBiometryData->fur_pattern_in_lynx_list ? $bearsBiometryData->fur_pattern_in_lynx_list->name : '' ) : '';
			$row[] = $isAnimalHandling ? ( $animalHandling->licence_list ? $animalHandling->licence_list->name : '' ) : '';
			$row[] = $animal->name;
			$row[] = $isAnimalHandling ? $animalHandling->project_name : '';
			$row[] = $isAnimalHandling ? $animalHandling->receiving_country : '';
			$row[] = $isAnimalHandling ? $animalHandling->telemetry_uid : '';

			$row[] = $isAnimalHandling ? $animalHandling->created_at->format('Y-m-d') : '';
			$row[] = $isAnimalHandling ? $animalHandling->updated_at->format('Y-m-d') : '';

			$payload[] = $row;
		}

		$csv = Writer::createFromFileObject(new SplTempFileObject());

		// We insert the CSV header
		$csv->insertOne([
			__('Animal ID'),
			__('Animal handling ID'),
			__('Animal handling date'),
			__('Species'),
			__('Hunting-management area (LUO)'),
			__('Number and the year of removal in hunting administrative area'),
			__('Hunting ground'),
			__('Way of withdrawal'),
			__('Type of legal cull'),
			__('Animal conflictedness'),
			__('Description of conflictedness'),
			__('Loss reason'),
			__('Loss reason description'),
			__('Geo location / Local name'),
			__('Place of removal type'),
			__('Other place of removal type'),
			__('Latitude'),
			__('Longitude'),
			__('Location Coordinate Type'),
			__('Sex'),
			__('Visual age estimate'),
			__('Body mass') . ' ' . __('Gross'),
			__('Body mass') . ' ' . __('Net'),
			__('User'),
			__('Permit number'),
			__('Description'),
			__('Date and time of death'),
			__('Hunter/Finder country'),
			__('Hunter/Finder name and surname'),
			__('Witness/Accompanying person name and surname'),
			__('Taxidermist name and surname'),
			__('Animal status'),
			__('Status on handling'),

			__('Biometry Data ID'),
			__('Body length'),
			# __('Abdominal length'),
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
			__('Physical condition, parasites, injuries, markings, other observations (ear tags, signs of crossbreeding with a dog, etc.) and notes'),
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

			__('Tooth Type'),

			__('Genetic samples taken YES/NO'),
			__('Left testicle length'),
			__('Left testicle width'),
			__('Right testicle length'),
			__('Right testicle width'),

			__('Incisors (front teeth) wear'),
			__('Color'),
			__("Light neck stripe 'collar'"),
			__('Lynx coat pattern'),

			__('Licence'),
			__('Animal name'),
			__('Project name'),
			__('Receiving country and institutions'),
			__('Ear-tag number or radio-collar (telemetry) identification'),
			__('Created at'), /*, 'depot', 'status' */
			__('Updated at')
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

		$worksheet = $spreadsheet->getSheet(0);

		$columnsToBeFormattedAsDate = ['C', 'AA', 'CA', 'CB'];
		foreach ($columnsToBeFormattedAsDate as $column) {
			$worksheet->getStyle($column . '1:' . $column . count($payload)+2)
				->getNumberFormat()
				->setFormatCode(
					NumberFormat::FORMAT_DATE_DMYMINUS
				);

			foreach ($payload as $rowNumber => $row) {
				$stringDate = $worksheet->getCell($column  . ($rowNumber + 2))->getValue();
				$excelDateValue = Date::PHPToExcel($stringDate);
				$worksheet->setCellValue($column . ($rowNumber + 2), $excelDateValue);
			}
		}

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
