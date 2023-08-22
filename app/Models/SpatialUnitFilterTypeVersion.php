<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Casts\LocalizedJsonData;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class SpatialUnitFilterElement
 *
 * @property int $id
 * @property string $title
 * @property string $description
 * @property date $valid_from
 * @property date $valid_to
 * @property int $spatial_unit_filter_type_id
 *
 * @property SpatialUnitFilterType $spatial_unit_filter_type
 *
 * @package App\Models
 */
class SpatialUnitFilterTypeVersion extends Model
{
	protected $table = 'spatial_unit_filter_type_versions';
	public $timestamps = true;

	use AsSource, Filterable;

	protected $casts = [
		'spatial_unit_filter_type_id' => 'int',
		'title' => 'string',
		'description' => 'string',
		'valid_from' => 'date',
		'valid_to' => 'date'
	];

	protected $fillable = [
		'title',
		'description',
		'spatial_unit_filter_type_id'
	];

	protected $allowedFilters = [
		'title',
		'description',
		'spatial_unit_filter_type_id'
	];

	protected $allowedSorts = [
		'id',
		'title',
		'description',
		'spatial_unit_filter_type_id'
	];

	public function spatial_unit_filter_type()
	{
		return $this->belongsTo(SpatialUnitFilterType::class);
	}

	public function full_title() {
		return 'full title';
	}
}
