<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class SpatialUnitFilterType
 * 
 * @property int $id
 * @property string $slug
 * 
 * @property SpatialUnitFilterTypeCountry $spatial_unit_filter_type_country
 * @property Collection|SpatialUnitFilterElement[] $spatial_unit_filter_elements
 *
 * @package App\Models
 */
class SpatialUnitFilterType extends Model
{
	protected $table = 'spatial_unit_filter_types';
	public $timestamps = false;

	protected $fillable = [
		'slug'
	];

	public function spatial_unit_filter_type_country()
	{
		return $this->hasOne(SpatialUnitFilterTypeCountry::class);
	}

	public function spatial_unit_filter_elements()
	{
		return $this->hasMany(SpatialUnitFilterElement::class);
	}
}
