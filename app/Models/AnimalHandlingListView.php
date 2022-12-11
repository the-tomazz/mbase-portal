<?php

namespace App\Models;

use Carbon\Carbon;
use App\Casts\LocalizedJsonData;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class BearsBiometryAnimalHandling
 *
 * @property int|null $id
 * @property int|null $species_list_id
 * @property int|null $way_of_withdrawal_list_id
 * @property string|null $licence_number
 * @property string|null $project_name
 * @property string|null $receiving_country
 * @property string|null $telementry_uid
 * @property int|null $biometry_loss_reason_list_id
 * @property string|null $biometry_loss_reason_description
 * @property int|null $animal_handling_date
 * @property string|null $place_of_removal
 * @property int|null $place_type_list_id
 * @property string|null $place_type_list_details
 * @property float|null $lat
 * @property float|null $lng
 * @property int|null $zoom
 * @property float|null $x
 * @property float|null $y
 * @property string|null $hunting_management_area
 * @property int|null $hunting_management_area_id
 * @property string|null $hunter_finder_name
 * @property string|null $hunter_finder_surname
 * @property string|null $hunter_finder_address
 * @property int|null $hunter_finder_country_id
 * @property string|null $witness_accompanying_person_name
 * @property string|null $witness_accompanying_person_surname
 * @property int|null $sample_taken
 * @property int|null $hair_sample_taken
 * @property int|null $blood_sample_taken
 * @property int|null $tooth_type_list_id
 * @property string|null $taxidermist_name
 * @property string|null $taxidermist_surname
 * @property int|null $data_entered_by_user_id
 * @property int|null $data_input_timestamp
 * @property int|null $animal_id
 * @property string|null $hunting_ground
 * @property USER-DEFINED|null $gcell
 * @property int|null $way_of_withdrawal_list_id
 * @property int|null $conflict_animal_removal_list_id
 * @property string|null $removal_annual_uid
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

class AnimalHandlingListView extends Model
{
	public const STR_EXISTS = 'exists';
	public const STR_MISSING = 'missing';

    protected $table = 'animal_handling_list_view';

	use AsSource, Filterable;
	use SoftDeletes;

	protected $casts = [
		'id' => 'int',
		'species_list_id' => 'int',
		'sex_list_id' => 'int',
		'biometry_loss_reason_list_id' => 'int',
		'animal_handling_date' => 'datetime',
		'place_type_list_id' => 'int',
		'lat' => 'float',
		'lng' => 'float',
		'zoom' => 'int',
		'x' => 'float',
		'y' => 'float',
		'hunting_management_area_id' => 'int',
		'hunter_finder_country_id' => 'int',
		'sample_taken' => 'int',
		'hair_sample_taken' => 'int',
		'blood_sample_taken' => 'int',
		'tooth_type_list_id' => 'int',
		'data_entered_by_user_id' => 'int',
		'animal_id' => 'int',
		'spatial_unit_gid' => 'int',
		'way_of_withdrawal_list_id' => 'int',
		'conflict_animal_removal_list_id' => 'int',
		'animal_name' => LocalizedJsonData::class,
		'animal_died_at' => 'datetime',
		'species_list_id' => 'int',
		'sex_list_id' => 'int',
	];

	protected $fillable = [

	];

	protected $allowedSorts = [
		'animal_id',
        'animal_status',
		'animal_status_on_handling',
		'animal_previous_status',
		'animal_name',
		'species_list_id',
		'sex_list_id',
		'animal_description',
		'animal_handling_date',
		'animal_died_at',
		'place_of_removal',
        'created_at',
        'updated_at',
		'bears_biometry_data_status'
    ];

	protected $allowedFilters = [
		'animal_status',
		'animal_status_on_handling',
		'animal_previous_status',
		'animal_name',
		'species_list_id',
		'sex_list_id',
		'animal_description',
		'place_of_removal',
		'bears_biometry_data_status'
	];

	public function species_list()
	{
		return $this->belongsTo(SpeciesList::class);
	}

	public function sex_list()
	{
		return $this->belongsTo(SexList::class);
	}

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

	public function spatial_unit_filter_element()
	{
		return $this->belongsTo(SpatialUnitFilterElement::class, 'hunting_management_area_id');
	}

	public function group()
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

	public function getIsAliveAttribute() {
		return $this->animal->is_alive;
	}

	public function conflict_animal_removal_list()
	{
		return $this->belongsTo(AnimalRemovalList::class);
	}

	public function SpatialUnit()
	{
		return $this->belongsTo(SpatialUnit::class);
	}

	public function samples()
    {
        return $this->hasMany('App\Models\BearsBiometrySample');
    }
}
