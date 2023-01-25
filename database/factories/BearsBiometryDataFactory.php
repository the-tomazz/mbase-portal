<?php

namespace Database\Factories;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometryData;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\FurPatternInLynxList;
use App\Models\IncisorsWearList;
use App\Models\SexList;
use App\Models\TeatsWearList;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\BearsBiometryData>
 */
class BearsBiometryDataFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
			# 'bears_biometry_animal_handling_id' => BearsBiometryData::all()->random()->id,
			'age' => random_int(1, 8),
			'masa_bruto' => random_int(1, 8),
			'masa_neto' => random_int(1, 8),
			'body_length' => random_int(1, 8),
			'shoulder_height' => random_int(1, 8),
			'head_circumference' => random_int(1, 8),
			'neck_circumference' => random_int(1, 8),
			'thorax_circumference' => random_int(1, 8),
			'abdomen_circumference' => random_int(1, 8),
			'baculum_length' => random_int(1, 8),
			'nipple_length' => random_int(1, 8),
			'teats_wear_list_id' => TeatsWearList::all()->random()->id,
			'tail_length' => random_int(1, 8),
			'ear_length_without_hair' => random_int(1, 8),
			'hair_tuft_length' => random_int(1, 8),
			'hind_left_paw_length' => random_int(1, 8),
			'hind_right_paw_length' => random_int(1, 8),
			'front_right_paw_length' => random_int(1, 8),
			'front_left_paw_length' => random_int(1, 8),
			'hind_left_paw_width' => random_int(1, 8),
			'hind_right_paw_width' => random_int(1, 8),
			'front_left_paw_width' => random_int(1, 8),
			'front_right_paw_width' => random_int(1, 8),
			'upper_left_canines_length' => random_int(1, 8),
			'upper_right_canines_length' => random_int(1, 8),
			'lower_left_canines_length' => random_int(1, 8),
			'lower_right_canines_length' => random_int(1, 8),
			'number_of_premolars_in_the_upper_jaw' => random_int(1, 8),
			'number_of_premolars_in_the_lower_jaw' => random_int(1, 8),
			'distance_between_upper_canines' => random_int(1, 8),
			'distance_between_lower_canines' => random_int(1, 8),
			'testicals_left_length' => random_int(1, 8),
			'testicals_left_width' => random_int(1, 8),
			'testicals_right_length' => random_int(1, 8),
			'testicals_right_width' => random_int(1, 8),
			'incisors_wear_list_id' => IncisorsWearList::all()->random()->id,
			'color_list_id' => ColorList::all()->random()->id,
			'collar_list_id' => CollarList::all()->random()->id,
			'fur_pattern_in_lynx_list_id' => FurPatternInLynxList::all()->random()->id,
			'observations_and_notes' => random_int(1, 8),
			'depot' => random_int(1, 8),
			'status' => random_int(1, 8)
        ];
    }
}
