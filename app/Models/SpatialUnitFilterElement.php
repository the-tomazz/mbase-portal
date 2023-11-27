<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Casts\LocalizedJsonData;
use App\Casts\NamedJsonData;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class SpatialUnitFilterElement
 *
 * @property int $id
 * @property string $slug
 * @property string $name
 * @property int $spatial_unit_filter_type_id
 *
 * @property SpatialUnitFilterType $spatial_unit_filter_type
 * @property Collection|SpatialUnit[] $spatial_units
 *
 * @package App\Models
 */
class SpatialUnitFilterElement extends Model
{
	protected $table = 'spatial_unit_filter_elements';
	public $timestamps = false;

	use AsSource, Filterable;

	protected $casts = [
		'id' => 'int',
		'spatial_unit_filter_type_id' => 'int',
		'name' => 'json' # LocalizedJsonData::class
	];

	protected $fillable = [
		'id',
		'slug',
		'name',
		'spatial_unit_filter_type_version_id'
	];

	protected $allowedFilters = [
		'id',
		'slug',
		'name'
	];

	protected $allowedSorts = [
		'id',
		'slug',
		'name'
	];

	public function spatial_unit_filter_type_version()
	{
		return $this->belongsTo(SpatialUnitFilterTypeVersion::class);
	}

	public function spatial_units()
	{
		return $this->belongsToMany(SpatialUnit::class, 'spatial_units_spatial_unit_filter_elements', 'spatial_unit_filter_element_id', 'spatial_unit_gid');
	}
}
