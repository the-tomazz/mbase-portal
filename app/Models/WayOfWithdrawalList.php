<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class WayOfWithdrawalList
 * 
 * @property int|null $id
 * @property string|null $title
 * @property string|null $value
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class WayOfWithdrawalList extends Model
{
	protected $table = 'way_of_withdrawal_list';
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
