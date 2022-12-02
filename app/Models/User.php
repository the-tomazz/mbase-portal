<?php

namespace App\Models;

use Orchid\Platform\Models\User as Authenticatable;

class User extends Authenticatable
{
	/**
	 * The attributes that are mass assignable.
	 *
	 * @var array
	 */
	protected $fillable = [
		'name',
		'email',
		'password',
		'country_id',
		'permissions',
		'default_animal_status'
	];

	/**
	 * The attributes excluded from the model's JSON form.
	 *
	 * @var array
	 */
	protected $hidden = [
		'password',
		'remember_token',
		'permissions',
	];

	/**
	 * The attributes that should be cast to native types.
	 *
	 * @var array
	 */
	protected $casts = [
		'permissions'          => 'array',
		'email_verified_at'    => 'datetime',
	];

	/**
	 * The attributes for which you can use filters in url.
	 *
	 * @var array
	 */
	protected $allowedFilters = [
		'id',
		'name',
		'email',
		'permissions',
	];

	/**
	 * The attributes for which can use sort in url.
	 *
	 * @var array
	 */
	protected $allowedSorts = [
		'id',
		'name',
		'email',
		'default_animal_status',
		'updated_at',
		'created_at',
	];

	public function country()
	{
		return $this->belongsTo(Group::class);
	}

	public function groups()
	{
		return $this->belongsToMany(Group::class, 'users_groups', 'user_id', 'group_id');
	}

	public function isInGroup(string $lvl0 = 'mbase2', string|null $lvl1 = null, string|null $lvl2 = null)
	{
		$groups = auth()->user()->groups->pluck('slug');

		foreach ($groups as $group) {
			$group = explode('-', $group);
			if ($group[0] != $lvl0) {
				continue;
			}
			if (!isset($group[1]) || $group[1] != $lvl1) {
				continue;
			}
			if (!isset($group[1]) || $group[1] != $lvl1) {
				continue;
			}

			return true;
		}

		return false;
	}
}
