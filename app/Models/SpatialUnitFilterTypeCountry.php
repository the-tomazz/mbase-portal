<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class SpatialUnitFilterTypeCountry
 * 
 * @property int $spatial_unit_filter_type_id
 * @property int $country_id
 * 
 * @property SpatialUnitFilterType $spatial_unit_filter_type
 * @property Group $group
 *
 * @package App\Models
 */
class SpatialUnitFilterTypeCountry extends Model
{
	protected $table = 'spatial_unit_filter_type_countries';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'spatial_unit_filter_type_id' => 'int',
		'country_id' => 'int'
	];

	protected $fillable = [
		'spatial_unit_filter_type_id',
		'country_id'
	];

	public function spatial_unit_filter_type()
	{
		return $this->belongsTo(SpatialUnitFilterType::class);
	}

	public function group()
	{
		return $this->belongsTo(Group::class, 'country_id');
	}
}
