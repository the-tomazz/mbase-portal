<?php
/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
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
class BearsListType extends Model
{
	use AsSource, Filterable, Attachable;

	protected $table = 'bears_list_type';

	protected $casts = [];

	protected $fillable = [
		'naziv',
	];

	public function bear_lists()
	{
		return $this->hasMany(BearsList::class);
	}
}
