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
            'group_types_countries', function (Blueprint $table) {
                $table->id();
                $table->unsignedInteger('group_type_id');
                $table->unsignedInteger('country_id');
                $table->foreign('group_type_id')
                    ->references('id')
                    ->on('group_types')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
                $table->foreign('country_id')
                    ->references('id')
                    ->on('groups')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
            }
        );

        DB::table('group_types_countries')->insert(
            [
				// COUNTRIES
				[ 'group_type_id' => 1, 'country_id' => 1 ],
				[ 'group_type_id' => 1, 'country_id' => 2 ],
				[ 'group_type_id' => 1, 'country_id' => 3 ],
				[ 'group_type_id' => 1, 'country_id' => 4 ],
				[ 'group_type_id' => 1, 'country_id' => 5 ],
				[ 'group_type_id' => 1, 'country_id' => 6 ],

				// MBASE-MODULE-ROLES
				[ 'group_type_id' => 2, 'country_id' => 1 ],
				[ 'group_type_id' => 2, 'country_id' => 2 ],
				[ 'group_type_id' => 2, 'country_id' => 3 ],
				[ 'group_type_id' => 2, 'country_id' => 4 ],
				[ 'group_type_id' => 2, 'country_id' => 5 ],
				[ 'group_type_id' => 2, 'country_id' => 6 ],

				// SI-OEZGS
				[ 'group_type_id' => 3, 'country_id' => 1 ],

				// MBASE-MODULE-PARAMETERS
				[ 'group_type_id' => 4, 'country_id' => 1 ],
				[ 'group_type_id' => 4, 'country_id' => 2 ],
				[ 'group_type_id' => 4, 'country_id' => 3 ],
				[ 'group_type_id' => 4, 'country_id' => 4 ],
				[ 'group_type_id' => 4, 'country_id' => 5 ],
				[ 'group_type_id' => 4, 'country_id' => 6 ],
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
        Schema::dropIfExists('group_types_countries');
    }
};
