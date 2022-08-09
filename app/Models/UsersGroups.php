<?php

namespace App\Models;

use App\Casts\LocalizedJsonData;
use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class UsersGroups extends Model
{
	protected $table = 'users_groups';

	use AsSource, Filterable, Attachable;


	protected $casts = [
		'name' => LocalizedJsonData::class
	];

	protected $fillable = [
		'user_id',
		'group_id',
	];
}
