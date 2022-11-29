<?php

namespace Database\Factories;

use App\Models\BearsBiometryAnimalHandling;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\BearsBiometrySample>
 */
class BearsBiometrySampleFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            // 'bears_biometry_animal_handling_id' => BearsBiometryAnimalHandling::all()->random()->id,
			'sample_code' => Str::random(10),
			'sample_tissue' => Str::random(10),
			'sample_comment' => Str::random(20)
        ];
    }
}
