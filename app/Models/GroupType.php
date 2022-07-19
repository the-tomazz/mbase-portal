<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

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
	protected $table = 'group_types';

	protected $casts = [
		'is_country' => 'bool'
	];

	protected $fillable = [
		'slug',
		'name',
		'is_country'
	];

	public function groups()
	{
		return $this->hasMany(Group::class);
	}
}
