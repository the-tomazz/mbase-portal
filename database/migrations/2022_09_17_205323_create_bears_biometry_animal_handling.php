<?php

use App\Models\ExtendedPostgresGrammar;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
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
//		DB::connection()->setSchemaGrammar(new ExtendedPostgresGrammar());
//		$schema = DB::connection()->getSchemaBuilder();
//			$schema->create('bears_biometry_animal', function (Blueprint $table) {
//            $table->id();
//			$table->integer('zivalska_vrsta')->nullable(true);
//			$table->integer('nacin_odvzema')->nullable(true);
//			$table->text('stevilka_dovoljenja')->nullable(true);
//			$table->text('ime_projekta')->nullable(true);
//			$table->text('oznaka_telemetrije')->nullable(true);
//			$table->text('vzrok_izgube')->nullable(true);
//			$table->text('vzrok_izgube_pogin')->nullable(true);
//			$table->bigInteger('datum')->nullable(true);
//			$table->bigInteger('datum_ocenjen')->nullable(true);
//			$table->text('mesto_odvzema')->nullable(true);
//			$table->text('mesto_opis')->nullable(true);
//			$table->text('mesto_podrocje')->nullable(true);
//			$table->text('mesto_podrocje_2')->nullable(true);
//			$table->text('mesto_meka')->nullable(true);
//			$table->integer('hr_broj')->nullable(true);
//			$table->integer('tip_mesta')->nullable(true);
//			$table->text('drugi_tip_mesta')->nullable(true);
//			$table->integer('obmocje_medveda')->nullable(true);
//			$table->double('lat')->nullable(true);
//			$table->double('lng')->nullable(true);
//			$table->integer('zoom')->nullable(true);
//			$table->double('x')->nullable(true);
//			$table->double('y')->nullable(true);
//			$table->text('luo')->nullable(true);
//			$table->integer('id_lovisca')->nullable(true);
//			$table->text('uplenitelj_ime')->nullable(true);
//			$table->text('uplenitelj_priimek')->nullable(true);
//			$table->text('uplenitelj_adr')->nullable(true);
//			$table->text('uplenitelj_tel')->nullable(true);
//			$table->smallInteger('uplenitelj_drzava')->nullable(true);
//			$table->text('uplenitelj_drzava_drugo')->nullable(true);
//			$table->text('spremljevalec_ime')->nullable(true);
//			$table->text('spremljevalec_priimek')->nullable(true);
//			$table->integer('vzorec_vzet')->nullable(true);
//			$table->integer('vzorec_dlake')->nullable(true);
//			$table->integer('vzorec_krvi')->nullable(true);
//			$table->integer('vzorec_zoba')->nullable(true);
//			$table->integer('vzorec_misica')->nullable(true);
//			$table->integer('vzorec_osit')->nullable(true);
//			$table->integer('vzorec_tkivo')->nullable(true);
//			$table->integer('vzorec_bubreg')->nullable(true);
//			$table->integer('vzorec_jetra')->nullable(true);
//			$table->integer('vzorec_pluca')->nullable(true);
//			$table->integer('vzorec_slezena')->nullable(true);
//			$table->integer('vzorec_srca')->nullable(true);
//			$table->text('loo_tel')->nullable(true);
//			$table->text('loo_fax')->nullable(true);
//			$table->text('loo_adr')->nullable(true);
//			$table->text('loo_email')->nullable(true);
//			$table->text('loo_posbroj')->nullable(true);
//			$table->text('loo_osoba')->nullable(true);
//			$table->text('loo_fun')->nullable(true);
//			$table->text('preparator_ime')->nullable(true);
//			$table->text('preparator_priimek')->nullable(true);
//			$table->bigInteger('vnasalec_id')->nullable(true);
//			$table->bigInteger('vnasalec_drzava')->nullable(true);
//			$table->bigInteger('cas_vnosa')->nullable(true);
//			$table->smallInteger('status')->nullable(true); //0-izbrisano,1-shranjeno,2-zaključeno
//			$table->text('identifikacija_osebka')->nullable(true);
//			$table->text('ime_lovisca')->nullable(true);
//			$table->geometry('gcell')->nullable(true); //geometry(Polygon,4326)
//			$table->text('vzrok_odstranitve')->nullable(true);
//			$table->text('translocation_location')->nullable(true);
//			$table->text('stevilka_letnega_odvzema')->nullable(true);
//			$table->date('date_time')->nullable(true);
//			$table->geometry('geom')->nullable(true);//geometry(Geometry,4326)
//			$table->integer('licence_id')->nullable(true);//geometry(Geometry,4326)
//		});

		DB::unprepared(file_get_contents(dirname(__FILE__) . '/sql/bears_biometry_animal_handling.sql'));
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('bears_biometry_animal_handling');
	}
};
