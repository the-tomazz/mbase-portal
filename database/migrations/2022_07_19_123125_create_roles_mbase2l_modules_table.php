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
            'users_roles_mbase2l_modules', function (Blueprint $table) {
                $table->unsignedBigInteger('user_id');
                $table->unsignedInteger('role_mbase2l_module_id');
                $table->primary(['user_id', 'role_mbase2l_module_id']);
                $table->foreign('user_id')
                    ->references('id')
                    ->on('users')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
                $table->foreign('role_mbase2l_module_id')
                    ->references('id')
                    ->on('roles_mbase2l_modules')
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
        Schema::dropIfExists('users_roles_mbase2l_modules');
    }
};
