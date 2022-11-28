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
	use SoftDeletes;

	public const STR_ALIVE = 'alive';
	public const STR_DEAD = 'dead';

	protected $table = 'animal';

	protected $casts = [
		'id' => 'int',
		'name' => LocalizedJsonData::class,
		'description' => LocalizedJsonData::class,
		'died_at' => 'datetime',
	];

	protected $fillable = [
		'status',
		'previous_status',
		'name',
		'description'
	];

	protected $allowedFilters = [
		'status',
		'previous_status',
		'status',
		'name',
		'description',
		'died_at'
	];

	/**
     * @var array
     */
    protected $allowedSorts = [
        'status',
		'previous_status',
        'name',
        'description',
		'died_at',
        'created_at',
        'updated_at',
    ];

	public function bears_biometry_animal_handling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}
}
