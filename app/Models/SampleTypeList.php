<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;


use App\Models\Base\BaseList;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class SexList
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class SampleTypeList extends BaseList
{
	use AsSource, Filterable;

	protected $table = 'sample_type_list';

	public function bearsBiometrySample()
	{
		return $this->hasOne(BearsBiometrySample::class);
	}

	public function isDeletable(): bool
	{
		return !$this->bearsBiometrySample;
	}
}
