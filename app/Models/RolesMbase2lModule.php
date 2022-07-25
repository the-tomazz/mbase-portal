<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Class RolesMbase2lModule
 * 
 * @property int $id
 * @property int $role_id
 * @property int $mbase2l_module_id
 * 
 * @property Role $role
 * @property Mbase2lModule $mbase2l_module
 *
 * @package App\Models
 */
class RolesMbase2lModule extends Model
{
	protected $table = 'roles_mbase2l_modules';
	public $timestamps = false;

	protected $casts = [
		'role_id' => 'int',
		'mbase2l_module_id' => 'int'
	];

	protected $fillable = [
		'role_id',
		'mbase2l_module_id'
	];

	public function role()
	{
		return $this->belongsTo(Role::class);
	}

	public function mbase2l_module()
	{
		return $this->belongsTo(Mbase2lModule::class);
	}
}
