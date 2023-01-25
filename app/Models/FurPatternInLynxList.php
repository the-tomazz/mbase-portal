<?php

namespace App\Models;

use App\Models\Base\BaseList;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class FurPatternInLynxList extends BaseList
{
	use AsSource, Filterable;

	protected $table = 'fur_pattern_in_lynx_list';

	public function bearsBiometryData()
	{
		return $this->hasOne(BearsBiometryData::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryData;
	}
}
