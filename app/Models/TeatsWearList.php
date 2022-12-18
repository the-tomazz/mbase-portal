<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Casts\LocalizedJsonData;
use App\Models\Base\BaseList;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\SoftDeletes;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class TeatsWearList
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class TeatsWearList extends BaseList
{
	use AsSource, Filterable;

	protected $table = 'teats_wear_list';

	public function bearsBiometryData()
	{
		return $this->hasOne(BearsBiometryData::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryData;
	}
}
