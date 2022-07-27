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
        Schema::create('spatial_unit_filter_types', function (Blueprint $table) {
            $table->id();
			$table->string('slug')->unique();
        });

		DB::table('spatial_unit_filter_types')->insert([
			[ 'slug' => 'SI-LOV' ],
			[ 'slug' => 'SI-LUO' ],
			[ 'slug' => 'SI-OB' ],
		]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('spatial_unit_filter_types');
    }
};
