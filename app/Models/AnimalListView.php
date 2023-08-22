<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Casts\LocalizedJsonData;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class Animal
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @property BearsBiometryAnimalHandling $bears_biometry_animal_handling
 *
 * @package App\Models
 */
class AnimalListView extends Model
{
	use HasFactory;
	use AsSource, Filterable;

	public const STR_ALIVE = 'alive';
	public const STR_DEAD = 'dead';

	protected $table = 'animal_list_view';

	protected $casts = [
		'id' => 'int',
		'description' => LocalizedJsonData::class,
		'died_at' => 'datetime',
		'species_list_id' => 'int',
		'species_list_name' => LocalizedJsonData::class,
		'sex_list_id' => 'int',
		'sex_list_name' => LocalizedJsonData::class,
		'way_of_withdrawal_list_id' => 'int',
		'way_of_withdrawal_list_name' => LocalizedJsonData::class,
		'bears_biometry_animal_handling_id' => 'int',
		'bears_biometry_data_id' => 'int',
		'animal_handling_count' => 'int',
		'animal_handling_date' => 'datetime',
		'bruto_masa' => 'float'
	];

	protected $fillable = [
		'id',
		'status',
		'name',
		'description',
		'species_list_id',
		'sex_list_id',
		'died_at'
	];

	protected $allowedFilters = [
		'id',
		'bears_biometry_animal_handling_id',
		'bears_biometry_data_id',
		'status',
		'name',
		'description',
		'died_at',
		'species_list_name->sl',
		'species_list_name->en',
		'species_list_name->de',
		'species_list_name->it',
		'species_list_name->hu',
		'species_list_name->hr',
		'sex_list_name->sl',
		'sex_list_name->en',
		'sex_list_name->de',
		'sex_list_name->it',
		'sex_list_name->hu',
		'sex_list_name->hr',
		'way_of_withdrawal_list_name->sl',
		'way_of_withdrawal_list_name->en',
		'way_of_withdrawal_list_name->de',
		'way_of_withdrawal_list_name->it',
		'way_of_withdrawal_list_name->hu',
		'way_of_withdrawal_list_name->hr',
		'hunting_management_area',
		'number_of_removal_in_the_hunting_administrative_area',
		'hunting_ground',
		'data_entered_by_user_id',
		'age',
		'masa_bruto',
		'animal_handling_count',
		'users_name'
	];

	/**
	 * @var array
	 */
	protected $allowedSorts = [
		'id',
		'bears_biometry_animal_handling_id',
		'bears_biometry_data_id',
		'status',
		'name',
		'description',
		'died_at',
		'species_list_name->sl',
		'species_list_name->en',
		'species_list_name->de',
		'species_list_name->it',
		'species_list_name->hu',
		'species_list_name->hr',
		'sex_list_name->sl',
		'sex_list_name->en',
		'sex_list_name->de',
		'sex_list_name->it',
		'sex_list_name->hu',
		'sex_list_name->hr',
		'way_of_withdrawal_list_name->sl',
		'way_of_withdrawal_list_name->en',
		'way_of_withdrawal_list_name->de',
		'way_of_withdrawal_list_name->it',
		'way_of_withdrawal_list_name->hu',
		'way_of_withdrawal_list_name->hr',
		'hunting_management_area',
		'number_of_removal_in_the_hunting_administrative_area',
		'hunting_ground',
		'data_entered_by_user_id',
		'age',
		'masa_bruto',
		'animal_handling_count',
		'created_at',
		'updated_at',
		'users_name'
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

	public function bears_biometry_animal_handlings()
	{
		return $this->hasMany(BearsBiometryAnimalHandling::class, 'animal_id', 'id');
	}

	public function bearsBiometryAnimalHandlings()
	{
		return $this->hasMany(BearsBiometryAnimalHandling::class, 'animal_id', 'id');
	}

	public function renderStatus()
	{
		return $this->status == self::STR_ALIVE ?
			'<i class="text-success">●</i> ' . __('Alive') :
			'<i class="text-danger">●</i> ' . __('Dead');
	}

	public function statusString()
	{
		return $this->status == self::STR_ALIVE ? __('Alive') : __('Dead');
	}
}
