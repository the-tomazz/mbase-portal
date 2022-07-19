<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class UsersRolesMbase2lModule
 * 
 * @property int $user_id
 * @property int $role_mbase2l_module_id
 * 
 * @property User $user
 * @property RolesMbase2lModule $roles_mbase2l_module
 *
 * @package App\Models
 */
class UsersRolesMbase2lModule extends Model
{
	protected $table = 'users_roles_mbase2l_modules';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'user_id' => 'int',
		'role_mbase2l_module_id' => 'int'
	];

	public function user()
	{
		return $this->belongsTo(User::class);
	}

	public function roles_mbase2l_module()
	{
		return $this->belongsTo(RolesMbase2lModule::class, 'role_mbase2l_module_id');
	}
}
