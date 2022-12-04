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
            'group_types',
            function (Blueprint $table) {
                $table->id();
                $table->string('slug')->unique();
                $table->string('name');
                $table->boolean('is_spatial_unit_group_type');
            }
        );

        DB::table('group_types')->insert(
            [
				[ 'slug' => 'COUNTRIES', 'name' => 'Countries', 'is_spatial_unit_group_type' => 0 ],
				[ 'slug' => 'MBASE2-MODULE-ROLES', 'name' => 'MBase2 roles', 'is_spatial_unit_group_type' => 0 ],
				[ 'slug' => 'SI-OEGZS', 'name' => 'Območna enota ZGS', 'is_spatial_unit_group_type' => 1 ],
				[ 'slug' => 'MBASE2-MODULE-PARAMETERS', 'name' => 'Module parameters', 'is_spatial_unit_group_type' => 0 ],
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
        Schema::dropIfExists('group_types');
    }
};
