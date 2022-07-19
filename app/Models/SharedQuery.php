<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

use App\Casts\LocalizedJsonData;

/**
 * Class SharedQuery
 *
 * @property int $id
 * @property string $slug
 * @property string $name
 * @property string|null $parameters
 * @property bool|null $published
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @package App\Models
 */
class SharedQuery extends Model
{
	protected $table = 'shared_queries';

	protected $casts = [
		'name' => LocalizedJsonData::class,
		'parameters' => 'binary',
		'published' => 'bool'
	];

	protected $fillable = [
		'slug',
		'name',
		'parameters',
		'published'
	];
}
