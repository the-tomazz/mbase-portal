<?php

use App\Models\SpatialUnitFilterTypeVersion;
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
        SpatialUnitFilterTypeVersion::where('id', 1)->update([ 'valid_to' => '2022-12-31' ]);
		SpatialUnitFilterTypeVersion::where('id', 2)->update([ 'valid_to' => '2022-12-31' ]);
		SpatialUnitFilterTypeVersion::where('id', 3)->update([ 'valid_to' => '2022-12-31' ]);

		SpatialUnitFilterTypeVersion::where('id', 4)->update([ 'valid_from' => '2023-01-01' ]);
		SpatialUnitFilterTypeVersion::where('id', 4)->update([ 'valid_to' => '2099-12-31' ]);
		SpatialUnitFilterTypeVersion::where('id', 5)->update([ 'valid_from' => '2023-01-01' ]);
		SpatialUnitFilterTypeVersion::where('id', 5)->update([ 'valid_to' => '2099-12-31' ]);
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
