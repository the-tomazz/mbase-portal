<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'mbase2l_modules',
            function (Blueprint $table) {
                $table->id();
                $table->string('slug')->unique();
                $table->string('name');
                $table->json('properties');
                $table->boolean('enabled');
                $table->timestamps();
            }
        );

        DB::table('mbase2l_modules')->insert(
            [
            [ 'slug' => 'dmg', 'name' => 'Damages', 'properties' => '{"color": "#fc960d", "grid_size": "1000"}', 'enabled' => true ],
            [ 'slug' => 'ct', 'name' => 'CT', 'properties' => '{"color": "#c92121", "grid_size": "1000"}', 'enabled' => true ],
            [ 'slug' => 'interventions', 'name' => 'Interventions', 'properties' => '{"color": "#d211ec", "grid_size": "1000"}', 'enabled' => true ],
            [ 'slug' => 'cnt', 'name' => 'Counts', 'properties' => '{"color": "#000000", "grid_size": 1000}', 'enabled' => true ],
            [ 'slug' => 'gensam', 'name' => 'GenSam', 'properties' => '{"color": "#75507b", "grid_size": "1000"}', 'enabled' => true ],
            [ 'slug' => 'sop', 'name' => 'Signs of presence', 'properties' => '{"color": "#13ee67", "grid_size": "1000"}', 'enabled' => true ],
            [ 'slug' => 'genana', 'name' => 'GenAna', 'properties' => '{}', 'enabled' => true ], // !!! DOUBLECHECK PROPERTIES!
            [ 'slug' => 'spm', 'name' => 'SPM', 'properties' => '{}', 'enabled' => true ], // !!! DOUBLECHECK PROPERTIES!
            ]
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mbase2l_modules');
    }
};
