<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class BiometryLossReasonList
 * 
 * @property int|null $id
 * @property string|null $title
 * @property string|null $value
 * @property string|null $name
 * @property string|null $description
 *
 * @package App\Models
 */
class BiometryLossReasonList extends Model
{
	protected $table = 'biometry_loss_reason_list';
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
