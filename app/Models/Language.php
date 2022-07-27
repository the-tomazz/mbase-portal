<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class Language
 *
 * @property string $code
 * @property string $name
 *
 * @package App\Models
 */
class Language extends Model
{
	protected $table = 'languages';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'name' => LocalizedJsonData::class,
	];

	protected $fillable = [
		'code',
		'name'
	];
}
