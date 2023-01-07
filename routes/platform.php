<?php

declare(strict_types=1);

use App\Orchid\Screens\AnimalDataEditScreen;
use App\Orchid\Screens\AnimalDataViewScreen;
use App\Orchid\Screens\PlatformScreen;
use App\Orchid\Screens\Role\RoleEditScreen;
use App\Orchid\Screens\Role\RoleListScreen;
use App\Orchid\Screens\User\UserEditScreen;
use App\Orchid\Screens\User\UserListScreen;
use App\Orchid\Screens\User\UserProfileScreen;
use Illuminate\Support\Facades\Route;
use Tabuna\Breadcrumbs\Trail;

use App\Orchid\Screens\BearsBiometryAnimalHandlingEditScreen;
use App\Orchid\Screens\AnimalHandlingListViewListScreen;
use App\Orchid\Screens\AnimalListScreen;
use App\Orchid\Screens\BiometryDataCreateScreen;
use App\Orchid\Screens\BiometryDataEditScreen;
use App\Orchid\Screens\BiometryDataViewScreen;

/*
|--------------------------------------------------------------------------
| Dashboard Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the need "dashboard" middleware group. Now create something great!
|
*/

// Main
Route::screen('/main', PlatformScreen::class)
	->name('platform.main');

// Platform > Profile
Route::screen('profile', UserProfileScreen::class)
	->name('platform.profile')
	->breadcrumbs(function (Trail $trail) {
		return $trail
			->parent('platform.index')
			->push(__('Profile'), route('platform.profile'));
	});

// Platform > System > Users
Route::screen('users/{user}/edit', UserEditScreen::class)
	->name('platform.systems.users.edit')
	->breadcrumbs(function (Trail $trail, $user) {
		return $trail
			->parent('platform.systems.users')
			->push(__('User'), route('platform.systems.users.edit', $user));
	});

// Platform > System > Users > Create
Route::screen('users/create', UserEditScreen::class)
	->name('platform.systems.users.create')
	->breadcrumbs(function (Trail $trail) {
		return $trail
			->parent('platform.systems.users')
			->push(__('Create'), route('platform.systems.users.create'));
	});

// Platform > System > Users > User
Route::screen('users', UserListScreen::class)
	->name('platform.systems.users')
	->breadcrumbs(function (Trail $trail) {
		return $trail
			->parent('platform.index')
			->push(__('Users'), route('platform.systems.users'));
	});

// Platform > System > Roles > Role
Route::screen('roles/{role}/edit', RoleEditScreen::class)
	->name('platform.systems.roles.edit')
	->breadcrumbs(function (Trail $trail, $role) {
		return $trail
			->parent('platform.systems.roles')
			->push(__('Role'), route('platform.systems.roles.edit', $role));
	});

// Platform > System > Roles > Create
Route::screen('roles/create', RoleEditScreen::class)
	->name('platform.systems.roles.create')
	->breadcrumbs(function (Trail $trail) {
		return $trail
			->parent('platform.systems.roles')
			->push(__('Create'), route('platform.systems.roles.create'));
	});

// Platform > System > Roles
Route::screen('roles', RoleListScreen::class)
	->name('platform.systems.roles')
	->breadcrumbs(function (Trail $trail) {
		return $trail
			->parent('platform.index')
			->push(__('Roles'), route('platform.systems.roles'));
	});

Route::screen('bearsBiometryAnimalHandling/{animal?}/{bearsBiometryAnimalHandling?}', BearsBiometryAnimalHandlingEditScreen::class)
	->name('platform.bearsBiometryAnimalHandling.edit');
Route::screen('animalHandlings', AnimalHandlingListViewListScreen::class)
	->name('platform.animalHandling.list');

Route::screen('biometryData/create/{bearsBiometryAnimalHandling}', BiometryDataCreateScreen::class)
	->name('platform.biometryData.create');
Route::screen('biometryData/edit/{bearsBiometryAnimalHandling}/{bearsBiometryData}', BiometryDataEditScreen::class)
	->name('platform.biometryData.edit');
Route::screen('biometryData/view/{bearsBiometryData}', BiometryDataViewScreen::class)
	->name('platform.biometryData.view');


Route::screen('animalData/edit/{animal?}', AnimalDataEditScreen::class)
	->name('platform.animalData.edit');
Route::screen('animalData/view/{animal?}', AnimalDataViewScreen::class)
	->name('platform.animalData.view');
Route::screen('animals', AnimalListScreen::class)
	->name('platform.animals.list');
