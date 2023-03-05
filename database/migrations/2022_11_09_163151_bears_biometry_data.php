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
				$table->float('body_length')->nullable();
				$table->float('abdominal_length')->nullable();
				$table->float('shoulder_height')->nullable();
				$table->float('head_circumference')->nullable();
				$table->float('neck_circumference')->nullable();
				$table->float('thorax_circumference')->nullable();
				$table->float('abdomen_circumference')->nullable();
				$table->float('baculum_length')->nullable();
				$table->float('nipple_length')->nullable();
				$table->unsignedInteger('teats_wear_list_id')->nullable();
				$table->float('tail_length')->nullable();
				$table->float('ear_length_without_hair')->nullable();
				$table->float('hair_tuft_length')->nullable();
				$table->float('hind_left_paw_length')->nullable();
				$table->float('hind_right_paw_length')->nullable();
				$table->float('front_right_paw_length')->nullable();
				$table->float('front_left_paw_length')->nullable();
				$table->float('hind_left_paw_width')->nullable();
				$table->float('hind_right_paw_width')->nullable();
				$table->float('front_left_paw_width')->nullable();
				$table->float('front_right_paw_width')->nullable();
				$table->float('upper_left_canines_length')->nullable();
				$table->float('upper_right_canines_length')->nullable();
				$table->float('lower_left_canines_length')->nullable();
				$table->float('lower_right_canines_length')->nullable();
				$table->float('number_of_premolars_in_the_upper_jaw')->nullable();
				$table->float('number_of_premolars_in_the_lower_jaw')->nullable();
				$table->float('distance_between_upper_canines')->nullable();
				$table->float('distance_between_lower_canines')->nullable();
				$table->float('testicals_left_length')->nullable();
				$table->float('testicals_left_width')->nullable();
				$table->float('testicals_right_length')->nullable();
				$table->float('testicals_right_width')->nullable();
				$table->unsignedInteger('incisors_wear_list_id')->nullable();
				$table->unsignedInteger('color_list_id')->nullable();
				$table->unsignedInteger('collar_list_id')->nullable();
				$table->unsignedInteger('fur_pattern_in_lynx_list_id')->nullable();
				$table->text('observations_and_notes')->nullable();
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

				$table->foreign('fur_pattern_in_lynx_list_id')
					->references('id')
					->on('fur_pattern_in_lynx_list')
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
