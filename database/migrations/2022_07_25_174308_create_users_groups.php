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
        Schema::create('users_groups', function (Blueprint $table) {
            $table->id();
			$table->unsignedInteger('user_id');
			$table->unsignedInteger('group_id');
			$table->foreign('user_id')
				->references('id')
				->on('users')
				->onUpdate('cascade')
				->onDelete('cascade');
			$table->foreign('group_id')
				->references('id')
				->on('groups')
				->onUpdate('cascade')
				->onDelete('cascade');
            $table->timestamps();
        });

		DB::table('users_groups')->insert([
			[ 'user_id' => 1, 'group_id' => 1 ],
			[ 'user_id' => 1, 'group_id' => 22 ],
		]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users_groups');
    }
};
