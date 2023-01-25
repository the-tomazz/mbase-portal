<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Casts\LocalizedJsonData;
use App\Models\Base\BaseList;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Orchid\Attachment\Attachable;
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
class Animal extends Model
{
	use HasFactory;
	use AsSource, Filterable;

	public const STR_ALIVE = 'alive';
	public const STR_DEAD = 'dead';

	protected $table = 'animal';

	protected $casts = [
		'id' => 'int',
		'name' => LocalizedJsonData::class,
		'description' => LocalizedJsonData::class,
		'died_at' => 'datetime',
		'species_list_id' => 'int',
		'sex_list_id' => 'int'
	];

	protected $fillable = [
		'status',
		'name',
		'description',
		'species_list_id',
		'sex_list_id'
	];

	protected $allowedFilters = [
		'status',
		'status',
		'name',
		'description',
		'died_at',
		'species_list_id',
		'sex_list_id'
	];

	/**
     * @var array
     */
    protected $allowedSorts = [
		'id',
        'status',
        'name',
        'description',
		'died_at',
        'created_at',
        'updated_at',
		'species_list_id',
		'sex_list_id'
    ];

	public function species_list()
	{
		return $this->belongsTo(SpeciesList::class);
	}

	public function sex_list()
	{
		return $this->belongsTo(SexList::class);
	}

	public function bears_biometry_animal_handlings()
	{
		return $this->hasMany(BearsBiometryAnimalHandling::class);
	}

	public function bearsBiometryAnimalHandlings()
	{
		return $this->hasMany(BearsBiometryAnimalHandling::class);
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
