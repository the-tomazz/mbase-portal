<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class BearsBiometryAnimalHandling
 *
 * @property int|null $id
 * @property int|null $species_list_id
 * @property int|null $way_of_withdrawal_list_id
 * @property int|null animal_conflictedness
 * @property int|null animal_conflictedness_details
 * @property int|null number_of_removal_in_the_hunting_administrative_area
 * @property string|null $licence_number
 * @property string|null $project_name
 * @property string|null $receiving_country
 * @property string|null $telemetry_uid
 * @property int|null $biometry_loss_reason_list_id
 * @property string|null $biometry_loss_reason_description
 * @property Carbon|null $animal_handling_date
 * @property string|null $place_of_removal
 * @property int|null $place_type_list_id
 * @property string|null $place_type_list_details
 * @property float|null $lat
 * @property float|null $lng
 * @property int|null $zoom
 * @property float|null $x
 * @property float|null $y
 * @property float|null unknown_hunter_finder,
 * @property string|null $hunting_management_area
 * @property int|null $hunting_management_area_id
 * @property string|null $hunter_finder_name_and_surname
 * @property int|null $hunter_finder_country_id
 * @property string|null $witness_accompanying_person_name_and_surname
 * @property int|null $tooth_type_list_id
 * @property string|null $taxidermist_name_and_surname
 * @property int|null $data_entered_by_user_id
 * @property int|null $data_input_timestamp
 * @property int|null $animal_id
 * @property string|null $hunting_ground
 * @property USER-DEFINED|null $gcell
 * @property int|null $way_of_withdrawal_list_id
 * @property int|null $conflict_animal_removal_list_id
 * @property string|null $removal_annual_uid
 * @property string|null $photos_collected
 * @property string|null $jaw_photos_collected
 * @property string|null $measurer_name_and_surname
 * @property string|null $hunting_ground_representative
 * @property USER-DEFINED|null $geom
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @property SpeciesList|null $species_list
 * @property WayOfWithdrawalList|null $way_of_withdrawal_list
 * @property BiometryLossReasonList|null $biometry_loss_reason_list
 * @property PlaceTypeList|null $place_type_list
 * @property SpatialUnitFilterElement|null $spatial_unit_filter_element
 * @property Group|null $group
 * @property ToothTypeList|null $tooth_type_list
 * @property User|null $user
 * @property Animal|null $animal
 * @property AnimalRemovalList|null $conflict_animal_removal_list
 *
 * @package App\Models
 */
class BearsBiometryAnimalHandling extends Model
{
	protected $table = 'bears_biometry_animal_handling';

	public const PT_3794 = 'PT_3794';
	public const PT_3912 = 'PT_3912';
	public const PT_4326 = 'PT_4326';

	public const CONFLICTEDNESS_UNKNOWN = 'unknown';
	public const CONFLICTEDNESS_CONFLICTING = 'conflicting';

	use AsSource, Filterable, Attachable;
	use HasFactory;

	protected $casts = [
		'id' => 'int',
		'biometry_loss_reason_list_id' => 'int',
		'animal_handling_date' => 'datetime',
		'place_type_list_id' => 'int',
		'licence_list_id' => 'int',
		'lat' => 'float',
		'lng' => 'float',
		'zoom' => 'int',
		'x' => 'float',
		'y' => 'float',
		'unknown_hunter_finder' => 'boolean',
		'hunting_management_area_id' => 'int',
		'hunter_finder_country_id' => 'int',
		'tooth_type_list_id' => 'int',
		'data_entered_by_user_id' => 'int',
		'animal_id' => 'int',
		'way_of_withdrawal_list_id' => 'int',
		'conflict_animal_removal_list_id' => 'int',
		'photos_collected' => 'boolean',
		'jaw_photos_collected' => 'boolean',
	];

	protected $fillable = [
		'id',
		'animal_conflictedness',
		'animal_conflictedness_details',
		'number_of_removal_in_the_hunting_administrative_area',
		'licence_number',
		'project_name',
		'receiving_country',
		'telemetry_uid',
		'biometry_loss_reason_list_id',
		'biometry_loss_reason_description',
		'animal_handling_date',
		'place_of_removal',
		'place_type_list_id',
		'place_type_list_details',
		'lat',
		'lng',
		'zoom',
		'x',
		'y',
		'unknown_hunter_finder',
		'hunting_management_area',
		'hunting_management_area_id',
		'hunter_finder_name_and_surname',
		'hunter_finder_country_id',
		'witness_accompanying_person_name_and_surname',
		'tooth_type_list_id',
		'tooth_type_not_sampled_reason',
		'taxidermist_name_and_surname',
		'data_entered_by_user_id',
		'data_input_timestamp',
		'animal_id',
		'hunting_ground',
		'way_of_withdrawal_list_id',
		'conflict_animal_removal_list_id',
		'licence_list_id',
		'removal_annual_uid',
		'photos_collected',
		'jaw_photos_collected',
		'measurer_name_and_surname',
		'hunting_ground_representative'
	];

	protected $allowedSorts = [
		'animal_id',
        'created_at',
        'updated_at',
    ];

	protected $allowedFilters = [
		'animal_id',
		'value',
		'name',
		'description'
	];

	public function way_of_withdrawal_list()
	{
		return $this->belongsTo(WayOfWithdrawalList::class);
	}

	public function biometry_loss_reason_list()
	{
		return $this->belongsTo(BiometryLossReasonList::class);
	}

	public function place_type_list()
	{
		return $this->belongsTo(PlaceTypeList::class);
	}

	public function licence_list()
	{
		return $this->belongsTo(LicenceList::class);
	}

	public function spatial_unit_filter_element()
	{
		return $this->belongsTo(SpatialUnitFilterElement::class, 'hunting_management_area_id');
	}

	public function group()
	{
		return $this->belongsTo(Group::class, 'hunter_finder_country_id');
	}

	public function hunter_finder_country()
	{
		return $this->belongsTo(Group::class, 'hunter_finder_country_id');
	}

	public function tooth_type_list()
	{
		return $this->belongsTo(ToothTypeList::class);
	}

	public function user()
	{
		return $this->belongsTo(User::class, 'data_entered_by_user_id');
	}

	public function animal()
	{
		return $this->belongsTo(Animal::class);
	}

	public function conflict_animal_removal_list()
	{
		return $this->belongsTo(ConflictAnimalRemovalList::class);
	}

	public function SpatialUnit()
	{
		return $this->belongsTo(SpatialUnit::class);
	}

	public function bearsBiometrySamples()
    {
        return $this->hasMany('App\Models\BearsBiometrySample');
    }

	public function bearsBiometryData()
    {
        return $this->hasOne('App\Models\BearsBiometryData');
    }

	public function renderAnimalStatusOnHandling()
	{
		return $this->animal_status_on_handling == Animal::STR_ALIVE ?
			'<i class="text-success">●</i> ' . __('Alive') :
			'<i class="text-danger">●</i> ' . __('Dead');
	}

	public function statusOnHandlingString()
	{
		return $this->animal_status_on_handling == Animal::STR_ALIVE ? __('Alive') : __('Dead');
	}
}
