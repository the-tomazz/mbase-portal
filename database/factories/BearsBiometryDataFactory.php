<?php

namespace Database\Factories;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\IncisorsWearList;
use App\Models\SexList;
use App\Models\TeatsWearList;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\BearsBiometryData>
 */
class BearsBiometryDataFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'bears_biometry_animal_handling_id' => BearsBiometryAnimalHandling::all()->random()->id,
			'sex_list_id' => SexList::all()->random()->id, 
			'age' => random_int(1,8), 
			'masa_bruto' => random_int(1,8), 
			'masa_neto' => random_int(1,8), 
			'hrbtna_dolzina' => random_int(1,8), 
			'trebusna_dolzina' => random_int(1,8), 
			'plecna_visina' => random_int(1,8), 
			'obseg_glave' => random_int(1,8), 
			'obseg_vratu' => random_int(1,8), 
			'obseg_prsnega_kosa' => random_int(1,8), 
			'obseg_trebuha' => random_int(1,8), 
			'dolzina_spolne_kosti' => random_int(1,8), 
			'dolzina_seskov' => random_int(1,8), 
			'teats_wear_list_id' => TeatsWearList::all()->random()->id, 
			'dolzina_repa_prva_meritev' => random_int(1,8), 
			'dolzina_repa_druga_meritev' => random_int(1,8), 
			'dolzina_usesov' => random_int(1,8), 
			'dolzina_copkov' => random_int(1,8), 
			'dzs_leva' => random_int(1,8), 
			'dzs_desna' => random_int(1,8), 
			'dps_desna' => random_int(1,8), 
			'dps_leva' => random_int(1,8), 
			'szs_leva' => random_int(1,8), 
			'szs_desna' => random_int(1,8), 
			'sps_leva' => random_int(1,8), 
			'sps_desna' => random_int(1,8), 
			'dzp_leva' => random_int(1,8), 
			'dzp_desna' => random_int(1,8), 
			'dsp_leva' => random_int(1,8), 
			'dsp_desna' => random_int(1,8), 
			'sp_zgoraj' => random_int(1,8), 
			'sp_spodaj' => random_int(1,8), 
			'incisors_wear_list_id' => IncisorsWearList::all()->random()->id, 
			'color_list_id' => ColorList::all()->random()->id, 
			'collar_list_id' => CollarList::all()->random()->id, 
			'stanje_lesine' => random_int(1,8), 
			'zdt' => random_int(1,8), 
			'masa_mesa' => random_int(1,8), 
			'udt' => random_int(1,8), 
			'dg' => random_int(1,8), 
			'dnpp' => random_int(1,8), 
			'lds' => random_int(1,8), 
			'ltv' => random_int(1,8), 
			'kds' => random_int(1,8), 
			'ktv' => random_int(1,8), 
			'boja_barve' => random_int(1,8), 
			'stare_ozljede' => random_int(1,8), 
			'dio' => random_int(1,8), 
			'opce_stanje' => random_int(1,8), 
			'tco_ime' => random_int(1,8), 
			'tco_prezime' => random_int(1,8), 
			'tco_naziv' => random_int(1,8), 
			'tco_adresa' => random_int(1,8), 
			'meritve_opravil_id' => random_int(1,8), 
			'meritve_opravil_ime' => random_int(1,8), 
			'meritve_opravil_priimek' => random_int(1,8), 
			'meritve_opravil_drzava' => random_int(1,8), 
			'ostala_opazanja' => random_int(1,8), 
			'opombe' => random_int(1,8), 
			'cas_biometrije' => random_int(1,8), 
			'cas_vnosa' => random_int(1,8), 
			'depot' => random_int(1,8), 
			'status' => random_int(1,8)
        ];
    }
}
