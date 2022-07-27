<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('languages', function (Blueprint $table) {
			$table->id();
			$table->string('code')->unique();
			$table->jsonb('name');
		});

		DB::table('languages')->insert([
			[ 'code' => 'en', 'name' => '{"en":"English language", "sl":"angleški jezik", "hr":"Engleski jezik", "it":"lingua inglese", "de":"Englische Sprache", "ro":"Limba engleză", "sk":"anglický jazyk"}' ],
			[ 'code' => 'sl', 'name' => '{"en":"Slovenian language", "sl":"Slovenski jezik", "hr":"Slovenski jezik", "it":"Lingua slovena", "de":"Slowenische Sprache", "ro":"Limba slovenă", "sk":"Slovinský jazyk"}' ],
			[ 'code' => 'hr', 'name' => '{"en":"Croatian language", "sl":"Hrvaški jezik", "hr":"Hrvatski jezik", "it":"Lingua croata", "de":"Kroatische Sprache", "ro":"Limba croată", "sk":"Chorvátsky jazyk"}' ],
			[ 'code' => 'it', 'name' => '{"en":"Italian language", "sl":"Italijanski jezik", "hr":"talijanski jezik", "it":"lingua italiana", "de":"italienische Sprache", "ro":"limba italiana", "sk":"Talianský jazyk"}' ],
			[ 'code' => 'de', 'name' => '{"en":"German language", "sl":"nemški jezik", "hr":"njemački jezik", "it":"lingua tedesca", "de":"deutsche Sprache", "ro":"Limba germană", "sk":"nemecký jazyk"}' ],
			[ 'code' => 'ro', 'name' => '{"en":"Romanian language", "sl":"Romunski jezik", "hr":"Rumunjski jezik", "it":"Lingua rumena", "de":"romanische Sprache", "ro":"limba română", "sk":"Rumunský jazyk"}' ],
			[ 'code' => 'sk', 'name' => '{"en":"Slovak language", "sl":"Slovaški jezik", "hr":"Slovački jezik", "it":"Lingua slovacca", "de":"Slowakische Sprache", "ro":"Limba slovacă", "sk":"Slovenský jazyk"}' ]
		]);
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('languages');
	}
};
