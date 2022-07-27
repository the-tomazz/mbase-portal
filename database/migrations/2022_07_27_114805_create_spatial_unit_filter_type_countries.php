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
        Schema::create('spatial_unit_filter_type_countries', function (Blueprint $table) {
            $table->unsignedInteger('spatial_unit_filter_type_id');
			$table->unsignedInteger('country_id');
			$table->foreign('spatial_unit_filter_type_id')
				->references('id')
				->on('spatial_unit_filter_types')
				->onUpdate('cascade')
				->onDelete('cascade');
			$table->foreign('country_id')
				->references('id')
				->on('groups')
				->onUpdate('cascade')
				->onDelete('cascade');
        });

		DB::table('spatial_unit_filter_type_countries')->insert([
			// all spatial_unit_filter_types belong to Slovenia
			[ 'spatial_unit_filter_type_id' => 1, 'country_id' => 1 ],
			[ 'spatial_unit_filter_type_id' => 2, 'country_id' => 1 ],
			[ 'spatial_unit_filter_type_id' => 3, 'country_id' => 1 ],
		]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('spatial_unit_filter_type_countries');
    }
};
