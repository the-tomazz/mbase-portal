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
		$lines = [];

		for ($i = 26; $i <= 44; $i++) {
			$lines[] = ['group_id' => $i, 'group_type_country_id' => 7];
		}
		DB::table('groups_group_types_countries')->insert($lines);
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}
};
