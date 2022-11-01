<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class BearTerritoryTypeList
 * 
 * @property int|null $id
 * @property string|null $title
 * @property string|null $value
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class BearTerritoryTypeList extends Model
{
	protected $table = 'bear_territory_type_list';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'name' => 'binary',
		'description' => 'binary'
	];

	protected $fillable = [
		'title',
		'value',
		'name',
		'description'
	];
}
