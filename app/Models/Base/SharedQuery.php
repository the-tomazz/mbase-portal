<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Base;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

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
 * @package App\Models\Base
 */
class SharedQuery extends Model
{
	protected $table = 'shared_queries';

	protected $casts = [
		'name' => 'binary',
		'parameters' => 'binary',
		'published' => 'bool'
	];
}
