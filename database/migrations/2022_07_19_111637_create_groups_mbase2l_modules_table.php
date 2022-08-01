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
            'groups_mbase2l_modules',
            function (Blueprint $table) {
                $table->increments('id');
                $table->unsignedInteger('group_id');
                $table->unsignedInteger('mbase2l_module_id');
                $table->foreign('group_id')
                    ->references('id')
                    ->on('groups')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
                $table->foreign('mbase2l_module_id')
                    ->references('id')
                    ->on('mbase2l_modules')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
            }
        );

        DB::table('groups_mbase2l_modules')->insert(
            [
            // DMG
            [ 'group_id' => '21', 'mbase2l_module_id' => 1 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 1 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 1 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 1 ],
            [ 'group_id' => '25', 'mbase2l_module_id' => 1 ],

            // CT
            [ 'group_id' => '21', 'mbase2l_module_id' => 2 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 2 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 2 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 2 ],

            // INTERVENTIONS
            [ 'group_id' => '21', 'mbase2l_module_id' => 3 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 3 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 3 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 3 ],
            [ 'group_id' => '26', 'mbase2l_module_id' => 3 ],

            // CNT
            [ 'group_id' => '21', 'mbase2l_module_id' => 4 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 4 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 4 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 4 ],

            // GENSAM
            [ 'group_id' => '21', 'mbase2l_module_id' => 5 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 5 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 5 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 5 ],

            // SOP
            [ 'group_id' => '21', 'mbase2l_module_id' => 6 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 6 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 6 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 6 ],

            // GENANA
            [ 'group_id' => '21', 'mbase2l_module_id' => 7 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 7 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 7 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 7 ],

            // SPM
            [ 'group_id' => '21', 'mbase2l_module_id' => 8 ],
            [ 'group_id' => '22', 'mbase2l_module_id' => 8 ],
            [ 'group_id' => '23', 'mbase2l_module_id' => 8 ],
            [ 'group_id' => '24', 'mbase2l_module_id' => 8 ],
            ]
        );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('groups_mbase2l_modules');
    }
};
