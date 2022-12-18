<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Models\Base\BaseList;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class BiometryLossReasonList
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
class BiometryLossReasonList extends BaseList
{
	public const OTHER = 233;

	use AsSource, Filterable;

	protected $table = 'biometry_loss_reason_list';

	public function bearsBiometryAnimalHandling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryAnimalHandling;
	}
}
