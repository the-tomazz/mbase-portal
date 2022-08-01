<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class GroupTypesCountry
 * 
 * @property int $id
 * @property int $group_type_id
 * @property int $country_id
 * 
 * @property GroupType $group_type
 * @property Group $group
 *
 * @package App\Models
 */
class GroupTypesCountry extends Model
{
	protected $table = 'group_types_countries';
	public $timestamps = false;

	protected $casts = [
		'group_type_id' => 'int',
		'country_id' => 'int'
	];

	protected $fillable = [
		'group_type_id',
		'country_id'
	];

	public function group_type()
	{
		return $this->belongsTo(GroupType::class);
	}

	public function group()
	{
		return $this->belongsTo(Group::class, 'country_id');
	}
}
