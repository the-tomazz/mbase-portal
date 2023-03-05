<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class BearsBiometryData
 *
 * @property int|null $id
 * @property int|null $bears_biometry_animal_handling_id
 * @property int|null $sex_list_id
 * @property int|null $age
 * @property float|null $masa_bruto
 * @property float|null $masa_neto
 * @property float|null $body_length
 * @property float|null $shoulder_height
 * @property float|null $head_circumference
 * @property float|null $neck_circumference
 * @property float|null $thorax_circumference
 * @property float|null $abdomen_circumference
 * @property float|null $baculum_length
 * @property float|null $nipple_length
 * @property int|null $teats_wear_list_id
 * @property float|null $tail_length
 * @property float|null $ear_length_without_hair
 * @property float|null $hair_tuft_length
 * @property float|null $hind_left_paw_length
 * @property float|null $hind_right_paw_length
 * @property float|null $front_right_paw_length
 * @property float|null $front_left_paw_length
 * @property float|null $hind_left_paw_width
 * @property float|null $hind_right_paw_width
 * @property float|null $front_left_paw_width
 * @property float|null $front_right_paw_width
 * @property float|null $upper_left_canines_length
 * @property float|null $upper_right_canines_length
 * @property float|null $number_of_premolars_in_the_upper_jaw
 * @property float|null $number_of_premolars_in_the_lower_jaw
 * @property float|null $distance_between_upper_canines
 * @property float|null $distance_between_lower_canines
 * @property float|null $testicals_left_length
 * @property float|null $testicals_left_width
 * @property float|null $testicals_right_length
 * @property float|null $testicals_right_width
 * @property int|null $incisors_wear_list_id
 * @property int|null $color_list_id
 * @property int|null $collar_list_id
 * @property int|null $fur_pattern_in_lynx_list_id
 * @property string|null $observations_and_notes
 * @property string|null $distance_between_upper_canines
 * @property string|null $distance_between_lower_canines
 * @property string|null $testicals_left_length
 * @property string|null $testicals_left_width
 * @property string|null $testicals_right_length
 * @property string|null $testicals_right_width
 * @property string|null $incisors_wear_list_id
 * @property Carbon|null $date_and_time_of_data_input
 * @property string|null $depot
 * @property int|null $status
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 * @property string|null $deleted_at
 *
 * @property BearsBiometryAnimalHandling|null $bears_biometry_animal_handling
 * @property SexList|null $sex_list
 * @property TeatsWearList|null $teats_wear_list
 * @property IncisorsWearList|null $incisors_wear_list
 * @property ColorList|null $color_list
 * @property CollarList|null $collar_list
 * @property CollarList|null $fur_pattern_in_lynx_list_id
 * @property User|null $user
 *
 * @package App\Models
 */
class BearsBiometryData extends Model
{
	use AsSource, Filterable;
	use HasFactory;

	protected $table = 'bears_biometry_data';

	protected $casts = [
		'id' => 'int',
		'bears_biometry_animal_handling_id' => 'int',
		'sex_list_id' => 'int',
		'age' => 'int',
		'masa_bruto' => 'float',
		'masa_neto' => 'float',
		'body_length' => 'float',
		'abdominal_length' => 'float',
		'shoulder_height' => 'float',
		'head_circumference' => 'float',
		'neck_circumference' => 'float',
		'thorax_circumference' => 'float',
		'abdomen_circumference' => 'float',
		'baculum_length' => 'float',
		'nipple_length' => 'float',
		'teats_wear_list_id' => 'int',
		'tail_length' => 'float',
		'ear_length_without_hair' => 'float',
		'hair_tuft_length' => 'float',
		'hind_left_paw_length' => 'float',
		'hind_right_paw_length' => 'float',
		'front_right_paw_length' => 'float',
		'front_left_paw_length' => 'float',
		'hind_left_paw_width' => 'float',
		'hind_right_paw_width' => 'float',
		'front_left_paw_width' => 'float',
		'front_right_paw_width' => 'float',
		'upper_left_canines_length' => 'float',
		'lower_left_canines_length' => 'float',
		'upper_right_canines_length' => 'float',
		'lower_right_canines_length' => 'float',
		'distance_between_upper_canines' => 'float',
		'distance_between_lower_canines' => 'float',
		'number_of_premolars_in_the_upper_jaw' => 'int',
		'number_of_premolars_in_the_lower_jaw' => 'int',
		'testicals_left_length' => 'float',
		'testicals_left_width' => 'float',
		'testicals_right_length' => 'float',
		'testicals_right_width' => 'float',
		'incisors_wear_list_id' => 'int',
		'color_list_id' => 'int',
		'collar_list_id' => 'int',
		'fur_pattern_in_lynx_list_id' => 'int',
		'status' => 'int'
	];

	protected $fillable = [
		'bears_biometry_animal_handling_id',
		'sex_list_id',
		'age',
		'masa_bruto',
		'masa_neto',
		'body_length',
		'shoulder_height',
		'head_circumference',
		'neck_circumference',
		'thorax_circumference',
		'abdomen_circumference',
		'baculum_length',
		'nipple_length',
		'teats_wear_list_id',
		'tail_length',
		'ear_length_without_hair',
		'hair_tuft_length',
		'hind_left_paw_length',
		'hind_right_paw_length',
		'front_right_paw_length',
		'front_left_paw_length',
		'hind_left_paw_width',
		'hind_right_paw_width',
		'front_left_paw_width',
		'front_right_paw_width',
		'upper_left_canines_length',
		'lower_left_canines_length',
		'upper_right_canines_length',
		'lower_right_canines_length',
		'distance_between_upper_canines',
		'distance_between_lower_canines',
		'number_of_premolars_in_the_upper_jaw',
		'number_of_premolars_in_the_lower_jaw',
		'testicals_left_length',
		'testicals_left_width',
		'testicals_right_length',
		'testicals_right_width',
		'incisors_wear_list_id',
		'color_list_id',
		'collar_list_id',
		'fur_pattern_in_lynx_list_id',
		'observations_and_notes',
		'date_and_time_of_data_input',
		'depot',
		'status'
	];

	public function bears_biometry_animal_handling()
	{
		return $this->belongsTo(BearsBiometryAnimalHandling::class);
	}

	public function sex_list()
	{
		return $this->belongsTo(SexList::class);
	}

	public function teats_wear_list()
	{
		return $this->belongsTo(TeatsWearList::class);
	}

	public function incisors_wear_list()
	{
		return $this->belongsTo(IncisorsWearList::class);
	}

	public function color_list()
	{
		return $this->belongsTo(ColorList::class);
	}

	public function collar_list()
	{
		return $this->belongsTo(CollarList::class);
	}

	public function fur_pattern_in_lynx_list()
	{
		return $this->belongsTo(FurPatternInLynxList::class);
	}
}
