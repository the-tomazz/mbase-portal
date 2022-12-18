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
 * Class SexList
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class SexList extends BaseList
{
	public const FEMALE_SEX_ID=223;
	public const NEUTRAL_SEX_ID=3237;

	use AsSource, Filterable;

	protected $table = 'sex_list';

	public function animal()
	{
		return $this->hasOne(Animal::class);
	}

	public function isDeletable(): bool {
		return !$this->animal;
	}
}
