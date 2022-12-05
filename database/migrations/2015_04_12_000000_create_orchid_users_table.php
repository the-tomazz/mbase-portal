<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrchidUsersTable extends Migration
{
    /**
     * Run the migrations.
     */
    public function up()
    {
        Schema::table(
            'users', function (Blueprint $table) {
                $table->jsonb('permissions')->nullable();
            }
        );

		DB::table('users')->insert([
			'name' => 'admin',
			'email' => 'admin@admin.com',
			'password' => '$2y$10$OQmT6mhE2UoBx7Mn2e6rIeiqU1ySqXuHxmThEiT9zA7cqnGDn.czS',
			'created_at' => '2022-07-21 16:52:26',
			'updated_at' => '2022-07-21 16:52:26',
			'permissions' => '{"mbase2l.super_admin": true, "platform.index": true, "platform.systems.roles": true, "platform.systems.users": true, "platform.systems.attachment": true}'
		]);
    }

    /**
     * Reverse the migrations.
     */
    public function down()
    {
        Schema::table(
            'users', function (Blueprint $table) {
                $table->dropColumn(['permissions']);
            }
        );
    }
}
