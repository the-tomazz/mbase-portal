<?php

namespace Database\Factories;

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BiometryLossReasonList;
use App\Models\PlaceTypeList;
use App\Models\SpatialUnit;
use App\Models\ToothTypeList;
use App\Models\User;
use App\Models\ConflictAnimalRemovalList;
use App\Models\LicenceList;
use App\Models\WayOfWithdrawalList;
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
			'animal_conflictedness' => mt_rand(0, 1) == 0 ? BearsBiometryAnimalHandling::CONFLICTEDNESS_UNKNOWN : BearsBiometryAnimalHandling::CONFLICTEDNESS_CONFLICTING,
			'animal_conflictedness_details' => Str::random(10),
			'number_of_removal_in_the_hunting_administrative_area' => Str::random(3) . '/' . Str::random(4),
			'way_of_withdrawal_list_id' => WayOfWithdrawalList::All()->random()->id,
			'conflict_animal_removal_list_id' => ConflictAnimalRemovalList::all()->random()->id,
			'licence_list_id' => LicenceList::all()->random()->id,
			'licence_number' => Str::random(10),
			'project_name' => Str::random(10),
			'receiving_country' => Str::random(10),
			'telemetry_uid' => Str::random(10),
			'biometry_loss_reason_list_id' => BiometryLossReasonList::all()->random()->id,
			'biometry_loss_reason_description' => Str::random(10),
			'animal_handling_date' => now(),
			'place_of_removal' => Str::random(10),
			'place_type_list_id' => PlaceTypeList::all()->random()->id,
			'place_type_list_details' => Str::random(10),
			'lat' => 46.044705 + mt_rand(0, 10) / 10,
			'lng' => 15.2424903 + mt_rand(0, 10) / 10,
			'zoom' => mt_rand(0, 10),
			'x' => mt_rand(0, 10) / 10,
			'y' => mt_rand(0, 10) / 10,
			'hunting_management_area' => Str::random(10),
			'hunting_management_area_id' => 1,
			'unknown_hunter_finder' => mt_rand(0, 1),
			'hunter_finder_name_and_surname' => fake()->name(),
			'hunter_finder_country_id' => 1,
			'witness_accompanying_person_name_and_surname' => fake()->name(),
			'tooth_type_list_id' => ToothTypeList::all()->random()->id,
			'tooth_type_not_sampled_reason' => Str::random(128),
			'taxidermist_name_and_surname' => fake()->name(),
			'data_entered_by_user_id' => User::all()->random()->id,
			'animal_id' => Animal::all()->random()->id,
			'hunting_ground' => Str::random(10),
			'number_of_removal_in_the_hunting_administration_area' => Str::random(10),
			'animal_status_on_handling' => mt_rand(0, 1) == 1 ? Animal::STR_ALIVE : Animal::STR_DEAD,
			'photos_collected' => mt_rand(0, 1),
			'jaw_photos_collected' => mt_rand(0, 1),
			'measurer_name_and_surname' => fake()->name(),
			'hunting_ground_representative' => fake()->name(),
		];
	}
}
