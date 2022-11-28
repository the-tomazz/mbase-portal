<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Casts\LocalizedJsonData;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class Group
 *
 * @property int $id
 * @property string $slug
 * @property string $name
 * @property int $group_type_id
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @property GroupType $group_type
 *
 * @package App\Models
 */
/**
 * Group
 * @mixin Builder
 */
class Group extends Model
{
	protected $table = 'groups';

	use AsSource, Filterable;

	protected $casts = [
		'group_type_id' => 'int',
		'name' => LocalizedJsonData::class
	];

	protected $fillable = [
		'slug',
		'name',
		'group_type_id'
	];

	public function group_type()
	{
		return $this->belongsTo(GroupType::class);
	}

	public function users()
	{
		return $this->hasMany(User::class);
	}
}
