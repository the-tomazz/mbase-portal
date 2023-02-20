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

		// all the countries belong to all the countries
        for ($countryGroupId=1; $countryGroupId<7; $countryGroupId++) {
			for ($groupTypesCountryId=1; $groupTypesCountryId<7; $groupTypesCountryId++) {
				DB::table('groups_group_types_countries')->insert(
					[ 'group_id' => $countryGroupId, 'group_type_country_id' => $groupTypesCountryId ]
				);
			}
		}

		// add all module related roles belong to all the countries
		for ($mbase2ModuleRoleId = 21; $mbase2ModuleRoleId < 56; $mbase2ModuleRoleId++) {
			for ($groupTypesCountryId=7; $groupTypesCountryId<13; $groupTypesCountryId++) {
				DB::table('groups_group_types_countries')->insert(
						[
							'group_id' => $mbase2ModuleRoleId,
							'group_type_country_id' => $groupTypesCountryId
						],
				);
			}
		}

		// all the območne enote belong to SI-OEZGS that belongs to Slovenia
		$groupTypesCountryId = 13; // 13 is (OE-GZS, Slovenia)
		for ($oezgsId=7; $oezgsId<21; $oezgsId++) {
			DB::table('groups_group_types_countries')->insert(
				[ 'group_id' => $oezgsId, 'group_type_country_id' => $groupTypesCountryId ],
		   );
		}

		// add all mortality biometry specific roles belong to all the countries
		for ($mortalityBiometry = 56; $mortalityBiometry < 58; $mortalityBiometry++) {
			for ($groupTypesCountryId=14; $groupTypesCountryId<20; $groupTypesCountryId++) {
				DB::table('groups_group_types_countries')->insert(
						[
							'group_id' => $mortalityBiometry,
							'group_type_country_id' => $groupTypesCountryId
						],
				);
			}
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
