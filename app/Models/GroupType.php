<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class GroupType
 *
 * @property int $id
 * @property string $slug
 * @property string $name
 * @property bool|null $is_country
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @property Collection|Group[] $groups
 *
 * @package App\Models
 */
class GroupType extends Model
{
	public const COUNTRIES = 1;
	public const MBASE2_MODULE_ROLES = 2;
	public const MBASE2_MODULE_PARAMETERS = 4;

	use AsSource, Filterable, Attachable;

	protected $table = 'group_types';

	protected $casts = [
		'is_spatial_unit_group_type' => 'bool'
	];

	protected $fillable = [
		'slug',
		'name',
		'is_spatial_unit_group_type'
	];

	public function groups()
	{
		return $this->hasMany(Group::class);
	}
}
