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
 * Class PlaceTypeList
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @property BearsBiometryAnimalHandling $bears_biometry_animal_handling
 *
 * @package App\Models
 */
class PlaceTypeList extends BaseList
{
	use AsSource, Filterable;

	public const OTHER_ID = 148;

	protected $table = 'place_type_list';

	public function bearsBiometryAnimalHandling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryAnimalHandling;
	}
}

