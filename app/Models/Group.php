<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

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
class Group extends Model
{
	protected $table = 'groups';

	protected $casts = [
		'group_type_id' => 'int'
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
}
