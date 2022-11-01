<?php

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
		Schema::create('bears_list', function (Blueprint $table) {
			$table->id();
			$table->integer('type_id');
			$table->foreign('type_id')
				->references('id')
				->on('bears_list_type')
				->onUpdate('cascade')
				->onDelete('cascade');
			$table->text('value');
			$table->jsonb('name');
			$table->jsonb('description')->nullable();
			$table->bigInteger('icon')->nullable();
			$table->bigInteger('valid_from')->nullable();
			$table->bigInteger('valid_to')->nullable();
			$table->jsonb('additional')->nullable();
			$table->integer('selectable')->default(1);
			$table->integer('altid')->nullable();
		});

		DB::unprepared(file_get_contents(dirname(__FILE__) . '/sql/bears_list_data.sql'));
//TODO: vidjeti kako da ubacimo podatke koji imaju loš json format??
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::dropIfExists('bears_list');
	}
};
