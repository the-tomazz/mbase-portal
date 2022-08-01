<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SpatialUnitGroup
 * 
 * @property int $spatial_unit_gid
 * @property int $group_id
 * 
 * @property SpatialUnit $spatial_unit
 * @property Group $group
 *
 * @package App\Models
 */
class SpatialUnitGroup extends Model
{
	protected $table = 'spatial_unit_groups';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'spatial_unit_gid' => 'int',
		'group_id' => 'int'
	];

	protected $fillable = [
		'spatial_unit_gid',
		'group_id'
	];

	public function spatial_unit()
	{
		return $this->belongsTo(SpatialUnit::class, 'spatial_unit_gid', 'gid');
	}

	public function group()
	{
		return $this->belongsTo(Group::class);
	}
}
