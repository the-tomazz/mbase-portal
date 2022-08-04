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
				$table->jsonb('name');
				$table->unsignedInteger('group_type_id');
				$table->foreign('group_type_id')
					->references('id')
					->on('group_types')
					->onUpdate('cascade')
					->onDelete('cascade');
			}
		);

		DB::table('groups')->insert(
			[
			// COUNTRIES
			[ 'slug' => 'si', 'name' => '{"sl":"Slovenija", "hr":"Slovenija", "it":"Slovenia", "de":"Slowenien", "ro":"Slovenia", "sk":"Slovinsko"}', 'group_type_id' => 1 ],
			[ 'slug' => 'hr', 'name' => '{"sl":"Hrvaška", "hr":"Hrvatska", "it":"Croazia", "de":"Kroatien", "ro":"Croaţia", "sk":"Chorvátsko"}', 'group_type_id' => 1 ],
			[ 'slug' => 'it', 'name' => '{"sl":"Italija", "hr":"Italija", "it":"Italia", "de":"Italien", "ro":"Italia", "sk":"Taliansko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'at', 'name' => '{"sl":"Avstrija", "hr":"Austrija", "it":"Austria", "de":"Österreich", "ro":"Austria", "sk":"Rakúsko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'ro', 'name' => '{"sl":"Romunia", "hr":"Rumunjska", "it":"Romania", "de":"Rumänien", "ro":"România", "sk":"Rumunsko"}', 'group_type_id' => 1  ],
			[ 'slug' => 'sl', 'name' => '{"sl":"Slovaška", "hr":"slovački", "it":"Slovacco", "de":"slowakisch", "ro":"Slovacă", "sk":"Slovenský"}', 'group_type_id' => 1 ],

			// SI-OEGZS
			[ 'slug' => 'SI-OEGZS-14',  'name' => '{"sl":"SEŽANA"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-10',  'name' => '{"sl":"NAZARJE"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-09',  'name' => '{"sl":"CELJE"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-01',  'name' => '{"sl":"TOLMIN"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-07',  'name' => '{"sl":"NOVO MESTO"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-02',  'name' => '{"sl":"BLED"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-12',  'name' => '{"sl":"MARIBOR"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-05',  'name' => '{"sl":"POSTOJNA"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-03',  'name' => '{"sl":"KRANJ"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-13',  'name' => '{"sl":"MURSKA SOBOTA"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-11',  'name' => '{"sl":"SLOVENJ GRADEC"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-08',  'name' => '{"sl":"BREŽICE"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-04',  'name' => '{"sl":"LJUBLJANA"}', 'group_type_id' => 3 ],
			[ 'slug' => 'SI-OEGZS-06',  'name' => '{"sl":"KOČEVJE"}', 'group_type_id' => 3 ],

			// PER MODULE ROLES
			[ 'slug' => 'MBASE2-MODULE-ADMINS',  'name' => '{"sl":"Module admins"}', 'group_type_id' => 2 ],
			[ 'slug' => 'MBASE2-MODULE-EDITORS',  'name' => '{"sl":"Module data editors"}', 'group_type_id' => 2 ],
			[ 'slug' => 'MBASE2-MODULE-CONSUMERS',  'name' => '{"sl":"Module data consumers"}', 'group_type_id' => 2 ],
			[ 'slug' => 'MBASE2-MODULE-READERS',  'name' => '{"sl":"Module data readers"}', 'group_type_id' => 2 ],
			[ 'slug' => 'MBASE2-MODULE-DEPUTIES',  'name' => '{"sl":"Module deputies"}', 'group_type_id' => 2 ],
			[ 'slug' => 'MBASE2-MODULE-INTERVENTORS',  'name' => '{"sl":"Module interventors"}', 'group_type_id' => 2 ],
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
		Schema::dropIfExists('groups');
	}
};
