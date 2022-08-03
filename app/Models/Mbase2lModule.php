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
 * Class Mbase2lModule
 *
 * @property int $id
 * @property string $slug
 * @property string $name
 * @property Carbon|null $created_at
 * @property Carbon|null $updated_at
 *
 * @property Collection|Role[] $roles
 *
 * @package App\Models
 */
class Mbase2lModule extends Model
{
	protected $table = 'mbase2l_modules';

	use AsSource, Filterable, Attachable;

	protected $fillable = [
		'slug',
		'name'
	];

	public function roles()
	{
		return $this->belongsToMany(Role::class, 'roles_mbase2l_modules')
					->withPivot('id');
	}
}
