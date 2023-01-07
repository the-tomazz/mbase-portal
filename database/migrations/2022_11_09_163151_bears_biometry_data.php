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
			'bears_biometry_data',
			function (Blueprint $table) {
				$table->id();

				$table->unsignedInteger('bears_biometry_animal_handling_id');
				$table->unsignedInteger('age')->nullable();
				$table->float('masa_bruto')->nullable();
				$table->float('masa_neto')->nullable();
				$table->float('hrbtna_dolzina')->nullable();
				$table->float('trebusna_dolzina')->nullable();
				$table->float('plecna_visina')->nullable();
				$table->float('obseg_glave')->nullable();
				$table->float('obseg_vratu')->nullable();
				$table->float('obseg_prsnega_kosa')->nullable();
				$table->float('obseg_trebuha')->nullable();
				$table->float('dolzina_spolne_kosti')->nullable();
				$table->float('dolzina_seskov')->nullable();
				$table->unsignedInteger('teats_wear_list_id')->nullable();
				$table->float('dolzina_repa_prva_meritev')->nullable();
				$table->float('dolzina_repa_druga_meritev')->nullable();
				$table->float('dolzina_usesov')->nullable();
				$table->float('dolzina_copkov')->nullable();
				$table->float('dzs_leva')->nullable();
				$table->float('dzs_desna')->nullable();
				$table->float('dps_desna')->nullable();
				$table->float('dps_leva')->nullable();
				$table->float('szs_leva')->nullable();
				$table->float('szs_desna')->nullable();
				$table->float('sps_leva')->nullable();
				$table->float('sps_desna')->nullable();
				$table->float('dzp_leva')->nullable();
				$table->float('dzp_desna')->nullable();
				$table->float('dsp_leva')->nullable();
				$table->float('dsp_desna')->nullable();
				$table->float('sp_zgoraj')->nullable();
				$table->float('sp_spodaj')->nullable();
				$table->unsignedInteger('incisors_wear_list_id')->nullable();
				$table->unsignedInteger('color_list_id')->nullable();
				$table->unsignedInteger('collar_list_id')->nullable();
				$table->text('stanje_lesine')->nullable();
				$table->string('zdt')->nullable();
				$table->string('masa_mesa')->nullable();
				$table->string('udt')->nullable();
				$table->string('dg')->nullable();
				$table->string('dnpp')->nullable();
				$table->string('lds')->nullable();
				$table->string('ltv')->nullable();
				$table->string('kds')->nullable();
				$table->string('ktv')->nullable();
				$table->string('boja_barve')->nullable();
				$table->string('stare_ozljede')->nullable();
				$table->string('dio')->nullable();
				$table->string('opce_stanje')->nullable();
				$table->string('tco_ime')->nullable();
				$table->string('tco_prezime')->nullable();
				$table->string('tco_naziv')->nullable();
				$table->string('tco_adresa')->nullable();
				$table->unsignedInteger('meritve_opravil_id')->nullable();
				$table->string('meritve_opravil_ime')->nullable();
				$table->string('meritve_opravil_priimek')->nullable();
				$table->unsignedInteger('meritve_opravil_drzava')->nullable();
				$table->string('ostala_opazanja')->nullable();
				$table->text('opombe')->nullable();
				$table->timestamp('cas_biometrije')->nullable();
				$table->timestamp('cas_vnosa')->nullable();
				$table->text('depot')->nullable();
				$table->unsignedInteger('status')->nullable();

				$table->timestamps();

				$table->foreign('bears_biometry_animal_handling_id')
					->references('id')
					->on('bears_biometry_animal_handling')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('teats_wear_list_id')
					->references('id')
					->on('teats_wear_list')
					->onUpdate('cascade')
					->onDelete('restrict');

				$table->foreign('incisors_wear_list_id')
					->references('id')
					->on('incisors_wear_list')
					->onUpdate('cascade')
					->onDelete('restrict');

				$table->foreign('color_list_id')
					->references('id')
					->on('color_list')
					->onUpdate('cascade')
					->onDelete('restrict');

				$table->foreign('collar_list_id')
					->references('id')
					->on('collar_list')
					->onUpdate('cascade')
					->onDelete('restrict');

				$table->foreign('meritve_opravil_id')
					->references('id')
					->on('users')
					->onUpdate('cascade')
					->onDelete('restrict');
			}
		);
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
