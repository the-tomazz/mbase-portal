<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Orchid\Platform\ItemPermission;
use Orchid\Platform\Dashboard;

class PermissionServiceProvider extends ServiceProvider
{
	/**
	 * @param Dashboard $dashboard
	 */
	public function boot(Dashboard $dashboard)
	{
		$permissions = ItemPermission::group('MBase2l')
			->addPermission('mbase2l.super_admin', 'Super Admin')
			->addPermission('mbase2l.admin', 'Admin')
			->addPermission('mbase2l.registered_user', 'Registered user');

		$dashboard->registerPermissions($permissions);
	}
}
