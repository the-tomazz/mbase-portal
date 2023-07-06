<?php

use App\Models\LicenceList;
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
		$dataLoad = [
			[ 'id' => 11, 'title' => 'Slovenia Forest Service licence', 'name' => '{"en":"Slovenia Forest Service licence","sl":"Licenca Zavoda za gozdove Slovenije"}' ],
			[ 'id' => 23, 'title' => 'UL BF Dept Biology Ljubljana_telemetry licence', 'name' => '{"en":"UL BF Dept Biology Ljubljana_telemetry licence","sl":"Licenca BF Oddelka za biologijo Ljubljana_telemetrija"}' ],
			[ 'id' => 17, 'title' => 'UL BF Dept Biology Ljubljana_genetic lab licence', 'name' => '{"en":"UL BF Dept Biology Ljubljana_genetic lab licence","sl":"Licenca BF Oddelka za biologijo Ljubljana_genetika"}' ],
			[ 'id' => 16, 'title' => 'UL BF Dept Forestry Ljubljana_bear licence', 'name' => '{"en":"UL BF Dept Forestry Ljubljana_bear licence","sl":"Licenca BF Oddelka za gozdarstvo Ljubljana_medved"}' ],
			[ 'id' => 21, 'title' => 'UL BF Dept Forestry Ljubljana_lynx licence', 'name' => '{"en":"UL BF Dept Forestry Ljubljana_lynx licence","sl":"Licenca BF Oddelka za gozdarstvo Ljubljana_ris"}' ],
			[ 'id' => 14, 'title' => 'Faculty of Veterinary Medicine Zagreb_bear licence', 'name' => '{"en":"Faculty of Veterinary Medicine Zagreb_bear licence","sl":"Licenca Veterinarske fakultete Zagreb_medved"}' ],
			[ 'id' => 22, 'title' => 'Faculty of Veterinary Medicine Zagreb_lynx licence', 'name' => '{"en":"Faculty of Veterinary Medicine Zagreb_lynx licence","sl":"Licenca Veterinarske fakultete Zagreb_ris"}' ],
			[ 'id' => 12, 'title' => 'PAT-Forest and Wildlife Service licence', 'name' => '{"en":"PAT-Forest and Wildlife Service licence","sl":"Licenca Avtonomne province Trento, Službe za gozdove in prosto živeče živali"}' ],
			[ 'id' => 15, 'title' => 'FIWI Vienna licence', 'name' => '{"en":"FIWI Vienna licence","sl":"Licenca Inštituta za ekologijo prosto živečih živali Dunaj"}' ],
			[ 'id' => 20, 'title' => 'SFS and UL BF Dept Biology Ljubljana licence', 'name' => '{"en":"SFS and UL BF Dept Biology Ljubljana licence","sl":"Licenca ZGS in BF Oddelka za biologijo Ljubljana"}' ],
			[ 'id' => 19, 'title' => 'FVM Zagreb and UL BF Dept Biology Ljubljana licence', 'name' => '{"en":"FVM Zagreb and UL BF Dept Biology Ljubljana licence","sl":"Licenca Veterinarske fakultete Zagreb in BF Oddelka za biologijo Ljubljana"}' ],
			[ 'id' => 18, 'title' => 'Regione Veneto licence', 'name' => '{"en":"Regione Veneto licence","sl":"Licenca Pokrajine Benečije, Italija"}' ],
			[ 'id' => 13, 'title' => 'Progetto Lince Italia - CUFAA licence', 'name' => '{"en":"Progetto Lince Italia - CUFAA licence","sl":"Licenca Progetto Lince Italia - Comando unità forestali, ambientali e agroalimentari"}' ],
			[ 'id' => 24, 'title' => 'ACDB Romania licence', 'name' => '{"en":"ACDB Romania licence","sl":"Licenca ACDB Romunija"}' ]
		];

		foreach ($dataLoad as $data) {
			LicenceList::where('id', $data['id'])
				->update([ 'title' => $data['title'], 'name' => $data['name'] ]);
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
