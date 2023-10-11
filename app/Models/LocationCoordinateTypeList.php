<?php

namespace App\Models;

use App\Models\Base\BaseList;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class LocationCoordinateTypeList extends BaseList
{
	use AsSource, Filterable;

	protected $table = 'location_coordinate_type_list';

	public function bearsBiometryAnimalHandling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}

	public function isDeletable(): bool
	{
		return !$this->bearsBiometryAnimalHandling;
	}
}
