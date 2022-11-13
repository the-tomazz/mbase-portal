<?php

namespace Database\Factories;

use App\Models\Animal;
use App\Models\AnimalRemovalList;
use App\Models\BearTerritoryTypeList;
use App\Models\BiometryLossReasonList;
use App\Models\PlaceTypeList;
use App\Models\SpatialUnit;
use App\Models\SpeciesList;
use App\Models\ToothTypeList;
use App\Models\User;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\BearsBiometryAnimalHandling>
 */
class BearsBiometryAnimalHandlingFactory extends Factory
{
	/**
	 * Define the model's default state.
	 *
	 * @return array<string, mixed>
	 */
	public function definition()
	{
		return [
			'species_list_id' => SpeciesList::all()->random()->id,
			'animal_removal_list_id' => AnimalRemovalList::all()->random()->id,
			'licence_number' => Str::random(10),
			'project_name' => Str::random(10),
			'telementry_uid' => Str::random(10),
			'biometry_loss_reason_list_id' => BiometryLossReasonList::all()->random()->id,
			'biometry_loss_reason_description' => Str::random(10),
			'animal_handling_date' => now(),
			'place_of_removal' => Str::random(10),
			'place_type_list_id' => PlaceTypeList::all()->random()->id,
			'place_type_list_details' => Str::random(10),
			'bear_territory_type_list_id' => BearTerritoryTypeList::all()->random()->id,
			'lat' => mt_rand(0, 10) / 10,
			'lng' => mt_rand(0, 10) / 10,
			'zoom' => mt_rand(0, 10),
			'x' => mt_rand(0, 10) / 10,
			'y' => mt_rand(0, 10) / 10,
			'hunting_management_area' => Str::random(10),
			'hunting_management_area_id' => 1,
			'hunter_finder_name' => Str::random(10),
			'hunter_finder_surname' => Str::random(10),
			'hunter_finder_address' => Str::random(10),
			'hunter_finder_country_id' => 1,
			'witness_accompanying_person_name' => Str::random(10),
			'witness_accompanying_person_surname' => Str::random(10),
			'sample_taken' => mt_rand(0, 0),
			'hair_sample_taken' => mt_rand(0, 0),
			'blood_sample_taken' => mt_rand(0, 0),
			'tooth_type_list_id' => ToothTypeList::all()->random()->id,
			'taxidermist_name' => Str::random(10),
			'taxidermist_surname' => Str::random(10),
			'data_entered_by_user_id' => User::all()->random()->id,
			'data_input_timestamp' => now(),
			'animal_id' => Animal::all()->random()->id,
			'hunting_area' => Str::random(10),
			'spatial_unit_gid' => SpatialUnit::all()->random()->id,
			'animal_removal_list_id' => AnimalRemovalList::all()->random()->id,
			'number_of_removal_in_the_hunting_administration_area' => Str::random(10)
		];
	}
}
