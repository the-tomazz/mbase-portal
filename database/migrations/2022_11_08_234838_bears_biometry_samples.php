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
			'bears_biometry_samples',
			function (Blueprint $table) {
				$table->id();
				$table->unsignedInteger('bears_biometry_animal_handling_id');
				$table->string('sample_code');
				$table->text('description');
				$table->timestamps();
				$table->softDeletes();

				$table->foreign('bears_biometry_animal_handling_id')
					->references('id')
					->on('bears_biometry_animal_handling')
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
