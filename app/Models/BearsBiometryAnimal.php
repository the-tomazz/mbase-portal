<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class BearsBiometryAnimal
 *
 * @package App\Models
 */
class BearsBiometryAnimal extends Model


{
	use AsSource, Filterable, Attachable;


	protected $table = 'bears_biometry_animal';

	protected $casts = [
	];

	protected $fillable = [
		'zivalska_vrsta',
		'nacin_odvzema',
		'stevilka_dovoljenja',
		'ime_projekta',
		'oznaka_telemetrije',
		'vzrok_izgube',
		'vzrok_izgube_pogin',
		'datum',
		'datum_ocenjen',
		'mesto_odvzema',
		'mesto_opis',
		'mesto_podrocje',
		'mesto_podrocje_2',
		'mesto_meka',
		'hr_broj',
		'tip_mesta',
		'drugi_tip_mesta',
		'obmocje_medveda',
		'lat',
		'lng',
		'zoom',
		'x',
		'y',
		'luo',
		'id_lovisca',
		'uplenitelj_ime',
		'uplenitelj_priimek',
		'uplenitelj_adr',
		'uplenitelj_tel',
		'uplenitelj_drzava',
		'uplenitelj_drzava_drugo',
		'spremljevalec_ime',
		'spremljevalec_priimek',
		'vzorec_vzet',
		'vzorec_dlake',
		'vzorec_krvi',
		'vzorec_zoba',
		'vzorec_misica',
		'vzorec_osit',
		'vzorec_tkivo',
		'vzorec_bubreg',
		'vzorec_jetra',
		'vzorec_pluca',
		'vzorec_slezena',
		'vzorec_srca',
		'loo_tel',
		'loo_fax',
		'loo_adr',
		'loo_email',
		'loo_posbroj',
		'loo_osoba',
		'loo_fun',
		'preparator_ime',
		'preparator_priimek',
		'vnasalec_id',
		'vnasalec_drzava',
		'cas_vnosa',
		'status',
		'identifikacija_osebka',
		'ime_lovisca',
		'gcell',
		'vzrok_odstranitve',
		'translocation_location',
		'stevilka_letnega_odvzema',
		'date_time',
		'geom',
		'licence_id'
	];
}
