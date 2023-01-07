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
class LicenceList extends BaseList
{
	use AsSource, Filterable;

	public const INT_ZGS_LICENCE = 11;

	protected $table = 'licence_list';

	public function bearsBiometryAnimalHandling()
	{
		return $this->hasOne(BearsBiometryAnimalHandling::class);
	}

	public function isDeletable(): bool {
		return !$this->bearsBiometryAnimalHandling;
	}
}
