<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use App\Casts\LocalizedJsonData;
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

	public function getNativeNameAttribute()
	{
		// $this->getRawOriginal('name') gets the raw JSON string, to avoid triggering the cast
		$names = json_decode($this->getRawOriginal('name'), true);
		if (is_array($names) && isset($names[$this->code])) {
			return $names[$this->code];
		}
		// fallback to 'en' if somehow missing, or just the first available
		if (isset($names['en'])) {
			return $names['en'];
		}
		if (is_array($names)) {
			foreach ($names as $name) {
				if (!empty($name)) {
					return $name;
				}
			}
		}
		return $this->code;
	}

}
