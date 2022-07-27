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
        DB::table('roles')->insert([
			[
				'slug' => 'MBASE2LAdmin',
				'name' => 'MBASE2L Admin',
				'permissions' => '{"mbase2l.admin": "1", "platform.index": "0", "platform.systems.roles": "0", "platform.systems.users": "0", "platform.systems.attachment": "0"}',
				'created_at' => '2022-07-25 17:40:29',
				'updated_at' => '2022-07-25 17:40:29'
			]
		]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('roles', function (Blueprint $table) {
            //
        });
    }
};
