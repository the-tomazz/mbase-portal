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
			'groups',
			function (Blueprint $table) {
				$table->id();
				$table->string('slug')->unique();
				$table->string('name');
				$table->unsignedInteger('group_type_id');
				$table->foreign('group_type_id')
					->references('id')
					->on('group_types')
					->onUpdate('cascade')
					->onDelete('cascade');
			}
		);

		DB::table('groups')->insert([
			// COUNTRIES
			[ 'slug' => 'si', 'name' => '{"sl":"Slovenija", "name" => "hr":"Slovenija", "name" => "it":"Slovenia", "name" => "de":"Slowenien", "name" => "ro":"Slovenia", "name" => "sk":"Slovinsko"}', 'group_type_id' => 1 ],
			[ 'slug' => 'hr', 'name' => '{"sl":"Hrvaška", "name" => "hr":"Hrvatska", "name" => "it":"Croazia", "name" => "de":"Kroatien", "name" => "ro":"Croaţia", "name" => "sk":"Chorvátsko"}', 'group_type_id' => 1 ],
			[ 'slug' => 'it', 'name' => '{"sl":"Italija", "name" => "hr":"Italija", "name" => "it":"Italia", "name" => "de":"Italien", "name" => "ro":"Italia", "name" => "sk":"Taliansko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'at', 'name' => '{"sl":"Avstrija", "name" => "hr":"Austrija", "name" => "it":"Austria", "name" => "de":"Österreich", "name" => "ro":"Austria", "name" => "sk":"Rakúsko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'ro', 'name' => '{"sl":"Romunia", "name" => "hr":"Rumunjska", "name" => "it":"Romania", "name" => "de":"Rumänien", "name" => "ro":"România", "name" => "sk":"Rumunsko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'sl', 'name' => '{"sl":"Slovaška", "name" => "hr":"slovački", "name" => "it":"Slovacco", "name" => "de":"slowakisch", "name" => "ro":"Slovacă", "name" => "sk":"Slovenský"}', 'group_type_id' => 1 ],

			// SI-OEGZS
			[ 'slug' => 'SI-OEGZS-14',  'name' => '{"sl":"SEŽANA"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-10',  'name' => '{"sl":"NAZARJE"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-09',  'name' => '{"sl":"CELJE"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-01',  'name' => '{"sl":"TOLMIN"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-07',  'name' => '{"sl":"NOVO MESTO"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-02',  'name' => '{"sl":"BLED"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-12',  'name' => '{"sl":"MARIBOR"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-05',  'name' => '{"sl":"POSTOJNA"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-03',  'name' => '{"sl":"KRANJ"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-13',  'name' => '{"sl":"MURSKA SOBOTA"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-11',  'name' => '{"sl":"SLOVENJ GRADEC"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-08',  'name' => '{"sl":"BREŽICE"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-04',  'name' => '{"sl":"LJUBLJANA"}', 'group_type_id' => 2 ],
			[ 'slug' => 'SI-OEGZS-06',  'name' => '{"sl":"KOČEVJE"}', 'group_type_id' => 2 ],
		]);
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('groups');
	}
};
