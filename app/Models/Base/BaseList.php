<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models\Base;

use Illuminate\Database\Eloquent\Model;
use App\Casts\LocalizedJsonData;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class AnimalRemovalList
 *
 * @property int|null $id
 * @property string|null $title
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class BaseList extends Model
{
	public const STR_ACTIVE = 'active';
	public const STR_INACTIVE = 'inactive';

	use AsSource, Filterable;

	protected $casts = [
		'id' => 'int',
		'name' => LocalizedJsonData::class,
		'description' => LocalizedJsonData::class
	];

	protected $fillable = [
		'name',
		'description',
		'status',
	];

	protected $allowedFilters = [
		'name',
		'description',
		'status'
	];

	/**
     * @var array
     */
    protected $allowedSorts = [
        'id',
        'name',
        'description',
		'status',
        'created_at',
        'updated_at',
    ];

	public function renderStatus() {
		return $this->status == self::STR_ACTIVE
			? '<i class="text-success">●</i> ' . __('Active')
			: '<i class="text-danger">●</i> ' . __('Inactive');
	}

	public function isDeletable(): bool {
		return true;
	}
}
