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
 * Class WayOfWithdrawalList
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
class WayOfWithdrawalList extends BaseList
{
	use AsSource, Filterable;

	public const REGULAR_CULL = 133;
	public const CONFLICT_ANIMAL_REMOVAL = 134;
	public const LOSS = 135;
	public const LIVE_CAPTURE = 136;
	public const TRANSLOCATION_OUT_OF_POPULATION = 3661;

	protected $table = 'way_of_withdrawal_list';

	public function bearsBiometryAnimalHandling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryAnimalHandling;
	}
}
