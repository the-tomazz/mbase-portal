<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        \App\Models\User::factory(10)->create();

		\App\Models\Animal::factory(10)
			->hasBearsBiometryAnimalHandlings(random_int(1, 3))
			->create();

		\App\Models\BearsBiometryAnimalHandling::factory(10)
			->hasBearsBiometryData(1)
			->hasBearsBiometrySamples(3)
			->create();
    }
}
