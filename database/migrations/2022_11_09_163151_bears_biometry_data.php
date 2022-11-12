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
				$table->unsignedInteger('sex_list_id');
				$table->unsignedInteger('age');
				$table->float('masa_bruto');
				$table->float('masa_neto');
				$table->float('hrbtna_dolzina');
				$table->float('trebusna_dolzina');
				$table->float('plecna_visina');
				$table->float('obseg_glave');
				$table->float('obseg_vratu');
				$table->float('obseg_prsnega_kosa');
				$table->float('obseg_trebuha');
				$table->float('dolzina_spolne_kosti');
				$table->float('dolzina_seskov');
				$table->unsignedInteger('teats_wear_list_id');
				$table->float('dolzina_repa_prva_meritev');
				$table->float('dolzina_repa_druga_meritev');
				$table->float('dolzina_usesov');
				$table->float('dolzina_copkov');
				$table->float('dzs_leva');
				$table->float('dzs_desna');
				$table->float('dps_desna');
				$table->float('dps_leva');
				$table->float('szs_leva');
				$table->float('szs_desna');
				$table->float('sps_leva');
				$table->float('sps_desna');
				$table->float('dzp_leva');
				$table->float('dzp_desna');
				$table->float('dsp_leva');
				$table->float('dsp_desna');
				$table->float('sp_zgoraj');
				$table->float('sp_spodaj');
				$table->unsignedInteger('incisors_wear_list_id');
				$table->unsignedInteger('color_list_id');
				$table->unsignedInteger('collar_list_id');
				$table->text('stanje_lesine');
				$table->string('zdt');
				$table->string('masa_mesa');
				$table->string('udt');
				$table->string('dg');
				$table->string('dnpp');
				$table->string('lds');
				$table->string('ltv');
				$table->string('kds');
				$table->string('ktv');
				$table->string('boja_barve');
				$table->string('stare_ozljede');
				$table->string('dio');
				$table->string('opce_stanje');
				$table->string('tco_ime');
				$table->string('tco_prezime');
				$table->string('tco_naziv');
				$table->string('tco_adresa');
				$table->unsignedInteger('meritve_opravil_id');
				$table->string('meritve_opravil_ime');
				$table->string('meritve_opravil_priimek');
				$table->unsignedInteger('meritve_opravil_drzava');
				$table->string('ostala_opazanja');
				$table->text('opombe');
				$table->timestamp('cas_biometrije');
				$table->timestamp('cas_vnosa');
				$table->text('depot');
				$table->unsignedInteger('status');

				$table->timestamps();
				$table->softDeletes();

				$table->foreign('bears_biometry_animal_handling_id')
					->references('id')
					->on('bears_biometry_animal_handling')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('sex_list_id')
					->references('id')
					->on('sex_list')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('teats_wear_list_id')
					->references('id')
					->on('teats_wear_list')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('incisors_wear_list_id')
					->references('id')
					->on('incisors_wear_list')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('color_list_id')
					->references('id')
					->on('color_list')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('collar_list_id')
					->references('id')
					->on('collar_list')
					->onUpdate('cascade')
					->onDelete('cascade');

				$table->foreign('meritve_opravil_id')
					->references('id')
					->on('users')
					->onUpdate('cascade')
					->onDelete('cascade');
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
