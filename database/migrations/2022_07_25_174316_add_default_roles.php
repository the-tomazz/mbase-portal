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
				'permissions' => '{"mbase2l.admin": "1", "platform.index": "1", "platform.systems.roles": "1", "platform.systems.users": "1", "mbase2l.registered_user": "1", "platform.systems.attachment": "0"}',
				'created_at' => '2022-07-25 17:40:29',
				'updated_at' => '2022-07-25 17:40:29'
			],
			[
				'slug' => 'MBASE2LRegisteredUser',
				'name' => 'MBASE2L Registered User',
				'permissions' => '{"mbase2l.admin": "0", "platform.index": "0", "platform.systems.roles": "0", "platform.systems.users": "0", "mbase2l.registered_user": "1", "platform.systems.attachment": "0"}',
				'created_at' => '2022-07-25 17:40:29',
				'updated_at' => '2022-07-25 17:40:29'
			]
		]);

		DB::table('role_users')->insert([
			[ 'role_id' => 1, 'user_id' => 1 ],
			[ 'role_id' => 2, 'user_id' => 1 ],
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
