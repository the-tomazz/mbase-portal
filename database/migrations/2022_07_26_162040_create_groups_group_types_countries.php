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
        Schema::create('groups_group_types_countries', function (Blueprint $table) {
			$table->unsignedInteger('group_id');
			$table->unsignedInteger('group_type_country_id');
			$table->foreign('group_id')
				->references('id')
				->on('groups')
				->onUpdate('cascade')
				->onDelete('cascade');
			$table->foreign('group_type_country_id')
				->references('id')
				->on('groups')
				->onUpdate('cascade')
				->onDelete('cascade');
			$table->timestamps();
		});

		$country_ids = [ 1, 2, 3, 4, 6 ];
		foreach ($country_ids as $country_id) { // each country belongs to it self
			DB::table('groups_group_types_countries')->insert([
				[ 'group_id' => $country_id, 'group_type_country_id' => $country_id ],
			]);
		}

		$eogzs_ids = [ 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ];
		foreach ($eogzs_ids as $oegzs_id) { // all OE GZSs belongs to it Slovenia
			DB::table('groups_group_types_countries')->insert([
				[ 'group_id' => $oegzs_id, 'group_type_country_id' => 1 ],
			]);
		}
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('groups_group_types_countries');
    }
};
