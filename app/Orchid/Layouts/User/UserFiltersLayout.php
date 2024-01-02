<?php

namespace App\Orchid\Layouts\User;

use App\Orchid\Filters\CountryFilter;
use App\Orchid\Filters\ModuleParameterFilter;
use App\Orchid\Filters\ModuleRoleFilter;
use App\Orchid\Filters\RoleFilter;
use Orchid\Filters\Filter;
use Orchid\Screen\Layouts\Selection;

class UserFiltersLayout extends Selection
{
	/**
	 * @return string[]|Filter[]
	 */
	public function filters(): array
	{
		return [
			RoleFilter::class,
			ModuleRoleFilter::class,
			ModuleParameterFilter::class
		];
	}
}
