<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use MStaack\LaravelPostgis\Eloquent\PostgisTrait;

/**
 * Class SpatialUnit
 *
 * @property int|null $gid
 * @property USER-DEFINED|null $geom
 *
 * @package App\Models
 */
class SpatialUnit extends Model
{
	protected $table = 'mbase2_ge.spatial_units';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'gid' => 'int',
		'geom' => 'USER-DEFINED'
	];

	protected $fillable = [
		'gid',
		'geom'
	];
}
