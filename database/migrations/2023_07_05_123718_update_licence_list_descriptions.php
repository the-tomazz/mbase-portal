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
			[ 'id' => 11, 'description' => '{"en":"This data belongs to Slovenia Forest Service, Slovenia, and can not be used or reproduced in any case without written consent of Slovenia Forest Service. For its Terms of Use please contact Slovenia Forest Service, Večna pot 2, Sl-1000 Ljubljana (Matej Bartol). Phone number +386 1 470 00 82, +386 1 470 00 86, e-mail: matej.bartol@zgs.si, dinalpbear@gmail.com.","sl":"Lastnik teh podatkov je Zavod za gozdove Slovenije. Brez pridobljenega pisnega dovoljenja je prepovedano kakorkoli uporabljati ali posredovati podatke. Za nadaljnje pogoje uporabe lahko kontaktirate Zavod za gozdove Slovenije, Večna pot 2, 1000 Ljubljana. Telefonski številki 01 470 00 82 ali 01 470 00 86, e-mail: matej.bartol@zgs.si, dinalpbear@gmail.com."}' ],
			[ 'id' => 23, 'description' => '{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of its owner. For its Terms of Use please contact Department of Biology, Biotechnical Faculty (University of Ljubljana), Večna pot 111, Sl-1000 Ljubljana (Hubert Potočnik). Phone number +386 1 320 3345; e-mail: hubert.potocnik@bf.uni-lj.si or hubert.potocnik@gmail.com.","sl":""}' ],
			[ 'id' => 17, 'description' => '{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of biology, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of its owner. For its Terms of Use please contact Department of Biology, Biotechnical Faculty (University of Ljubljana), Večna pot 111, Sl-1000 Ljubljana (Tomaž Skrbinšek). Phone number +386 1 320 3345; e-mail: raziskovanje.medvedov@gmail.com.","sl":""}' ],
			[ 'id' => 16, 'description' => '{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of Forestry and Renewable resources, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of data owner. For its Terms of Use please contact Department of Forestry and Renewable resources, Večna pot 83, Sl-1000 Ljubljana (Klemen Jerina). E-mail: klemen.jerina@bf.uni-lj.si.","sl":""}' ],
			[ 'id' => 21, 'description' => '{"en":"This data belongs to Department for Forestry, Biotechnical Faculty, University of Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent from data owner. For its Terms of Use please contact Dr. Miha Krofel, Dept. for Forestry, Biotechnical Faculty, University of Ljubljana, Večna pot 83, Sl-1000 Ljubljana. Phone number + 386 1 3203 509; e-mail: miha.krofel@bf.uni-lj.si.","sl":""}' ],
			[ 'id' => 14, 'description' => '{"en":"This data belongs to Faculty of Veterinary Medicine, Zagreb, Croatia, and can not be used or reproduced in any case without written consent of Faculty of Veterinary Medicine. For its Terms of Use please contact Faculty of Veterinary Medicine, Heinzelova 55, 10 000 Zagreb, Croatia (Slaven Reljić). Phone number +385 1 23 90 158; e-mail: slaven.reljic@gmail.com.","sl":""}' ],
			[ 'id' => 22, 'description' => '{"en":"This data belongs to the Faculty of Veterinary Medicine, University of Zagreb, Croatia and can not be used or reproduced in any case without written consent of Faculty of Veterinary Medicine, University of Zagreb. For its Terms of Use please contact Faculty of Veterinary Medicine, University of Zagreb Heinzelova 55, 10 0000 Zagreb, Croatia (Magda Sindičić). Phone number +385 1 2390 156; e-mail: lifelynx.hr@gmail.com.","sl":""}' ],
			[ 'id' => 12, 'description' => '{"en":"This data belongs to Provincia Autonoma di Trento - Forest and Wildlife Service, Italy, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact Provincia Autonoma di Trento, Forest and Wildlife Service, G.B. Trener 3, I-38123 Trento, Italy. Phone number +390461 49 59 43; e-mail: serv.foreste@pec.provincia.tn.it. ","sl":""}' ],
			[ 'id' => 15, 'description' => '{"en":"This data belongs to Research Institute of Wildlife Ecology (Department of Interdisciplinary Life Sciences), University of Veterinary Medicine Vienna, Austria, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact dr. Jörg Rauer or dr. Felix Knauer (Conservation medicine unit), Research Institute of Wildlife Ecology, University of Veterinary Medicine Vienna, Savoyenstraße 1, A-1160 Wien. E-mail: felix.knauer@vetmeduni.ac.at or Georg.Rauer@vetmeduni.ac.at","sl":""}' ],
			[ 'id' => 20, 'description' => '{"en":"This data belongs to Slovenia Forest Service, Slovenia, and to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia. Data can not be used or reproduced in any case without written consent of data owners. For its Terms of Use please contact i) Matej Bartol, Slovenia Forest Service, Večna pot 2, Sl-1000 Ljubljana. Phone number +386 1 470 00 50, +386 1 470 00 82, e-mail: matej.bartol@zgs.si, dinalpbear@gmail.com or ii) Tomaž Skrbinšek, Department of Biology, Biotechnical Faculty, University of Ljubljana, Večna pot 111, Sl-1000 Ljubljana. Phone number +386 1 320 33 45; e-mail: raziskovanje.medvedov@gmail.com.","sl":""}' ],
			[ 'id' => 19, 'description' => '{"en":"This data belongs to Faculty of Veterinary Medicine, Zagreb, Croatia and to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia. Data can not be used or reproduced in any case without written consent of its owners. For its Terms of Use please contact i) Tomaž Skrbinšek, Department of Biology, Biotechnical Faculty, University of Ljubljana, Večna pot 111, Sl-1000 Ljubljana. Phone number +386 1 320 3345, e-mail: raziskovanje.medvedov@gmail.com or ii) Josip Kusak, Faculty of Veterinary Medicine, Heinzelova 55, 10 000 Zagreb, Croatia. Phone number +385 1 23 90 158, e-mail: josip.kusak@gmail.com.","sl":""}' ],
			[ 'id' => 18, 'description' => '{"en":"This data belongs to Regione del Veneto, Italy, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact Regione del Veneto, Direzione Agroambiente, Caccia e Pesca, Via Torino 110, 30172 Mestre Venezia, Italy. Tel. +39 041 2795436.","sl":""}' ],
			[ 'id' => 13, 'description' => '{"en":"This data belongs to Progetto Lince Italia and CUFAA, Italy, and cannot be used or reproduced in any case without a written consent of Progetto Lince Italia. For the Terms of Use please contact Progetto Lince Italia, Via Roma 43, 33018 Tarvisio; e-mail: info@progettolinceitalia.it.","sl":""}' ],
			[ 'id' => 24, 'description' => '{"en":"This data belongs to ACDB, Romania, and cannot be used or reproduced in any case without written consent of ACDB. For its Terms of Use please contact ACDB, Ion Creanga 12, Focsani 620083, Romania. Phone number: +40 720 217546, +40 737 493179; e-mail: teodora.sin.g@gmail.com, andreagazzola@yahoo.it.","sl":""}' ]
		];

		foreach ($dataLoad as $data) {
			LicenceList::find($data['id'])
				->update([ 'description' => $data['description'] ]);
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
