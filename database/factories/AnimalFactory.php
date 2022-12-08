<?php

namespace Database\Factories;

use App\Models\Animal;
use App\Models\SexList;
use App\Models\SpeciesList;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Animal>
 */
class AnimalFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
		$val = Str::random(10);
		$isAlive = random_int(0, 1) > 0;

        return [
			'status' => $isAlive ? Animal::STR_ALIVE : Animal::STR_DEAD,
			'previous_status' => $isAlive && ( random_int(0, 1) > 0 ) ? Animal::STR_ALIVE : Animal::STR_DEAD,
			'died_at' => !$isAlive ? date("Y-m-d H:i:s", mt_rand(1262055681,1262055681)) : null,
			'name' => $isAlive ? fake()->name() : 'Same As ID',
			'description' => $val,
			'species_list_id' => SpeciesList::all()->random()->id,
			'sex_list_id' => SexList::all()->random()->id
        ];
    }
}
