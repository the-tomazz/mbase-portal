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
        Schema::create('bears_list_type', function (Blueprint $table) {
            $table->id();
            $table->text('naziv');
        });

		DB::table('bears_list_type')->insert(
		[
			['id' => 1,	'naziv' => 'country'],
			['id' => 36,	'naziv' => 'way_of_sighting'],
			['id' => 3,	'naziv' => 'discovery_location'],
			['id' => 18,	'naziv' => 'killed_animal'],
			['id' => 4,	'naziv' => 'license_type'],
			['id' => 12,	'naziv' => 'luo'],
			['id' => 16,	'naziv' => 'number_of_animals'],
			['id' => 10,	'naziv' => 'observation_quality'],
			['id' => 19,	'naziv' => 'place_of_extraction'],
			['id' => 20,	'naziv' => 'precipitation'],
			['id' => 6,	'naziv' => 'preservation_method'],
			['id' => 7,	'naziv' => 'sample_age'],
			['id' => 11,	'naziv' => 'sample_type'],
			['id' => 9,	'naziv' => 'subpopulation'],
			['id' => 22,	'naziv' => 'suspected_culprit'],
			['id' => 15,	'naziv' => 'urinate_on_ground'],
			['id' => 5,	'naziv' => 'population'],
			['id' => 23,	'naziv' => 'study'],
			['id' => 13,	'naziv' => 'analysis_result'],
			['id' => 14,	'naziv' => 'blood_in_urine'],
			['id' => 21,	'naziv' => 'sample_type_damage'],
			['id' => 17,	'naziv' => 'corpse_decomposition'],
			['id' => 52,	'naziv' => 'entity_type'],
			['id' => 53,	'naziv' => 'portal_species'],
			['id' => 57,	'naziv' => 'animal_identifier'],
			['id' => 58,	'naziv' => 'blup'],
			['id' => 59,	'naziv' => 'spatial_attributes'],
			['id' => 60,	'naziv' => 'hunting_grounds'],
			['id' => 32,	'naziv' => 'color'],
			['id' => 61,	'naziv' => 'countries'],
			['id' => 62,	'naziv' => 'bears_biometry_data_table'],
			['id' => 63,	'naziv' => 'bears_biometry_samples_table'],
			['id' => 64,	'naziv' => 'damage_category_zgs_cl'],
			['id' => 65,	'naziv' => 'damage_object_unit_cl'],
			['id' => 66,	'naziv' => 'quadrant_functions'],
			['id' => 67,	'naziv' => 'crs'],
			['id' => 68,	'naziv' => 'database_modules'],
			['id' => 69,	'naziv' => 'database_variables'],
			['id' => 70,	'naziv' => 'spatial_layers'],
			['id' => 71,	'naziv' => 'damage_culprit_cl'],
			['id' => 46,	'naziv' => 'biometry_loss_reason'],
			['id' => 25,	'naziv' => 'way_of_withdrawal'],
			['id' => 29,	'naziv' => 'place_type'],
			['id' => 30,	'naziv' => 'bear_territory_type'],
			['id' => 35,	'naziv' => 'country_of_hunter_finder_withdrawal'],
			['id' => 31,	'naziv' => 'tooth_type'],
			['id' => 41,	'naziv' => 'collar'],
			['id' => 43,	'naziv' => 'sex'],
			['id' => 28,	'naziv' => 'teats_wear'],
			['id' => 42,	'naziv' => 'incisors_wear'],
			['id' => 34,	'naziv' => 'animal_discovery_location_type'],
			['id' => 26,	'naziv' => 'calibration_table'],
			['id' => 37,	'naziv' => 'collar_type'],
			['id' => 44,	'naziv' => 'intervention_animal_species'],
			['id' => 2,	'naziv' => 'collection_method'],
			['id' => 8,	'naziv' => 'species'],
			['id' => 45,	'naziv' => 'intervention_applicant'],
			['id' => 39,	'naziv' => 'intervention_measure'],
			['id' => 40,	'naziv' => 'intervention_animal_contact'],
			['id' => 33,	'naziv' => 'group_type'],
			['id' => 54,	'naziv' => 'bears_biometry_animal_table'],
			['id' => 38,	'naziv' => 'estimating_animal_type'],
			['id' => 74,	'naziv' => 'Damage_object_Mbase'],
			['id' => 75,	'naziv' => 'volkovi_spol'],
			['id' => 76,	'naziv' => 'volkovi_kvaliteta_lokacije'],
			['id' => 77,	'naziv' => 'location_quality'],
			['id' => 78,	'naziv' => 'wolf_type_of_removal'],
			['id' => 79,	'naziv' => 'damage_object_wolf'],
			['id' => 80,	'naziv' => 'sample_type_wolf'],
			['id' => 83,	'naziv' => 'howling_response_type_wolf'],
			['id' => 84,	'naziv' => 'source_database_wolf'],
			['id' => 85,	'naziv' => 'intervention_reason'],
			['id' => 86,	'naziv' => 'intervention_reason_when_animal_is_a_potential_threat_to_human'],
			['id' => 87,	'naziv' => 'signs_of_presence'],
			['id' => 91,	'naziv' => 'intervention_situation_type_cl'],
			['id' => 92,	'naziv' => 'signs_of_presence_wolf'],
			['id' => 93,	'naziv' => 'prey'],
			['id' => 94,	'naziv' => 'howling_response_type'],
			['id' => 101, 'naziv' => 	'prey_type_wolf'],
			['id' => 104, 'naziv' => 	'intervention_reason_list_cl'],
			['id' => 105, 'naziv' => 	'damage_culprit_SFS'],
			['id' => 106, 'naziv' => 	'conflict_animal_removal'],
			['id' => 107, 'naziv' => 	'genetic_sample']
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
        Schema::dropIfExists('bears_list_type');
    }
};
