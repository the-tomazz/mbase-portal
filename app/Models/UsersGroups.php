<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Attachment\Attachable;
use Orchid\Filters\Filterable;
use Orchid\Screen\AsSource;

class UsersGroups extends Model
{
	protected $table = 'users_groups';

	use AsSource, Filterable, Attachable;


	protected $casts = [];

	protected $fillable = [
		'user_id',
		'group_id',
	];
}
