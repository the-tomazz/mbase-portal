<?php

namespace Database\Factories;

use App\Models\Animal;
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

		$is_alive = random_int(0, 1) > 0;
        return [
			'status' => $is_alive ? Animal::STR_ALIVE : Animal::STR_DEAD,
			'previous_status' => $is_alive && ( random_int(0, 1) > 0 ) ? Animal::STR_ALIVE : Animal::STR_DEAD,
			'died_at' => date("Y-m-d H:i:s", mt_rand(1262055681,1262055681)),
			'name' => $val,
			'description' => $val
        ];
    }
}
