<?php

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
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
		$animalHandlings = BearsBiometryAnimalHandling::where('animal_handling_date', '>', '2022-12-31')->get();

		Log::debug(['animalHandlings', $animalHandlings]);

		foreach ($animalHandlings as $animalHandling) {
			if ($animalHandling->animal_handling_date->format('Y') == '2023') {
				Log::debug(['2023 animal handling', $animalHandling]);

				$results = DB::select('
					SELECT
						gid
					FROM
						mbase2_ge.spatial_units
					WHERE
						public.ST_Contains(
							geom,
							public.ST_SetSRID(
								public.ST_Point(
									?,
									?
								),
								4326
							)
						)
				', [$animalHandling->lng, $animalHandling->lat]);

				$dataFoundFlag = false;
				foreach ($results as $result) {
					Log::debug(['git result found', $result]);

					$gid = $result->gid;

					$LUOResults = DB::select('
						select
							spatial_unit_filter_element_id,
							spatial_unit_filter_elements.name
						from
							spatial_units_spatial_unit_filter_elements
						join
							spatial_unit_filter_elements
						on
							spatial_unit_filter_elements.id = spatial_unit_filter_element_id
						join
							spatial_unit_filter_type_versions
						on
							spatial_unit_filter_type_versions.id = spatial_unit_filter_elements.spatial_unit_filter_type_version_id
						join
							spatial_unit_filter_types
						on
							spatial_unit_filter_types.id = spatial_unit_filter_type_versions.spatial_unit_filter_type_id
						where
							spatial_unit_gid = ?
						and
							spatial_unit_filter_types.slug like ?
						and
							spatial_unit_filter_type_versions.valid_from <= ?
						and
							spatial_unit_filter_type_versions.valid_to >= ?
					', [$gid, '__-LUO', '2023-01-01', '2023-01-01']);

					$LOVResults = DB::select('
						select
							spatial_unit_filter_element_id,
							spatial_unit_filter_elements.name
						from
							spatial_units_spatial_unit_filter_elements
						join
							spatial_unit_filter_elements
						on
							spatial_unit_filter_elements.id = spatial_unit_filter_element_id
						join
							spatial_unit_filter_type_versions
						on
							spatial_unit_filter_type_versions.id = spatial_unit_filter_elements.spatial_unit_filter_type_version_id
						join
							spatial_unit_filter_types
						on
							spatial_unit_filter_types.id = spatial_unit_filter_type_versions.spatial_unit_filter_type_id
						where
							spatial_unit_gid = ?
						and
							spatial_unit_filter_types.slug like ?
						and
							spatial_unit_filter_type_versions.valid_from <= ?
						and
							spatial_unit_filter_type_versions.valid_to >= ?
					', [$gid, '__-LOV', '2023-01-01', '2023-01-01']);

					if (count($LUOResults) > 0) {
						Log::debug(['LUO found', $LUOResults]);
						$LUO = json_decode($LUOResults[0]->name)->name;
						$LUO_id = $LUOResults[0]->spatial_unit_filter_element_id;
					}

					if (count($LOVResults) > 0) {
						Log::debug(['LOV found', $LOVResults]);
						$LOV = json_decode($LOVResults[0]->name)->name;
					}

					if (count($LOVResults) > 0 && count($LUOResults) > 0) {
						$dataFoundFlag = true;
						break;
					}
				}

				if ($dataFoundFlag) {
					Log::debug(['Updating to:', [
						[ 'hunting_management_area', $LUO ],
						[ 'hunting_management_area_id', $LUO_id ],
						[ 'hunting_ground', $LOV ],
					]]);

					$animalHandling->update(
						[
							[ 'hunting_management_area', $LUO ],
							[ 'hunting_management_area_id', $LUO_id ],
							[ 'hunting_ground', $LOV ],
						]
					);
				}
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
		//
	}
};
