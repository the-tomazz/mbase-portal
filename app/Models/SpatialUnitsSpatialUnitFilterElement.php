<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SpatialUnitsSpatialUnitFilterElement
 *
 * @property int $spatial_unit_gid
 * @property int $spatial_unit_filter_element_id
 *
 * @property SpatialUnit $spatial_unit
 * @property SpatialUnitFilterElement $spatial_unit_filter_element
 *
 * @package App\Models
 */
class SpatialUnitsSpatialUnitFilterElement extends Model
{
	protected $table = 'spatial_units_spatial_unit_filter_elements';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'spatial_unit_gid' => 'int',
		'spatial_unit_filter_element_id' => 'int'
	];

	protected $fillable = [
		'spatial_unit_gid',
		'spatial_unit_filter_element_id'
	];

	public function spatial_unit()
	{
		return $this->belongsTo(SpatialUnit::class, 'spatial_unit_gid', 'gid');
	}

	public function spatial_unit_filter_element()
	{
		return $this->belongsTo(SpatialUnitFilterElement::class);
	}
}
