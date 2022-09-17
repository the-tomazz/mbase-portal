<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

/**
 * Class GroupType
 *
 * @property int $id
 * @property string $naziv
 *
 * @package App\Models
 */
class BearsList extends Model


{
	use AsSource, Filterable, Attachable;

	protected $table = 'bears_list';

	protected $casts = [
		'name'  => LocalizedJsonData::class,
		'description'  => LocalizedJsonData::class,
		'additional'  => LocalizedJsonData::class
	];

	protected $fillable = [
	    'type_id',
		'value',
		'name',
		'description',
		'icon',
		'valid_from',
		'valid_to',
		'additional',
		'selectable',
		'altid'
	];

	public function types()
	{
		return $this->belongsTo(BearsListType::class);
	}
}
