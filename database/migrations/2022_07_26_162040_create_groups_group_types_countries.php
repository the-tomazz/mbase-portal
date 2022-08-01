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
            'groups_group_types_countries', function (Blueprint $table) {
                $table->unsignedInteger('group_id');
                $table->unsignedInteger('group_type_country_id');
                $table->foreign('group_id')
                    ->references('id')
                    ->on('groups')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
                $table->foreign('group_type_country_id')
                    ->references('id')
                    ->on('groups')
                    ->onUpdate('cascade')
                    ->onDelete('cascade');
                $table->timestamps();
            }
        );

        $countryIDs = [ 1, 2, 3, 4, 6 ];
        foreach ($countryIDs as $countryID) { // each country belongs to it self
            DB::table('groups_group_types_countries')->insert(
                [
                [ 'group_id' => $countryID, 'group_type_country_id' => $countryID ],
                ]
            );
        }

        $eogzsIDs = [ 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 ];
        foreach ($eogzsIDs as $eogzsID) { // all OE GZSs belongs to it Slovenia
            DB::table('groups_group_types_countries')->insert(
                [
                [ 'group_id' => $eogzsID, 'group_type_country_id' => 8 ],
                ]
            );
        }

        $mbase2ModuleRoleIDs = [ 21, 22, 23, 24, 25 ];
        $groupTypeCountryID= 7;
        foreach ($mbase2ModuleRoleIDs as $mbase2ModuleRoleID) { // all roles belongs to it all countries
            DB::table('groups_group_types_countries')->insert(
				[
				[ 'group_id' => $mbase2ModuleRoleID, 'group_type_country_id' => $groupTypeCountryID ],
				]
			);
        }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('groups_group_types_countries');
    }
};
