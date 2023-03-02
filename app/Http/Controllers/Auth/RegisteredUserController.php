<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\Group;
use App\Models\User;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;
use Orchid\Platform\Models\Role;

class RegisteredUserController extends Controller
{
	/**
	 * Display the registration view.
	 *
	 * @return \Illuminate\View\View
	 */
	public function create()
	{
		$countries = Group::where('groups.group_type_id', 1)->pluck('name', 'id')->toArray();
		return view('auth.register', compact("countries"));
	}

	/**
	 * Handle an incoming registration request.
	 *
	 * @param  \Illuminate\Http\Request  $request
	 * @return \Illuminate\Http\RedirectResponse
	 *
	 * @throws \Illuminate\Validation\ValidationException
	 */
	public function store(Request $request)
	{
		$request->validate([
			'name' => ['required', 'string', 'max:255'],
			'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
			'country_id' => ['required'],
			'password' => ['required', 'confirmed', Rules\Password::defaults()],
		]);

		$user = User::create([
			'name' => $request->name,
			'email' => $request->email,
			'username' => $request->email,
			'password' => Hash::make($request->password),
			'country_id' => $request->country_id,
			'permissions' => json_decode('{"mbase2l.admin": false, "platform.index": false, "platform.systems.roles": false,
							   "platform.systems.users": false, "mbase2l.registered_user": true,
							   "platform.systems.attachment": false}')
		]);

		$role = Role::where('slug', 'MBASE2LRegisteredUser')->first();
		$user->addRole($role);

		event(new Registered($user));

		Auth::login($user);

		return redirect(RouteServiceProvider::HOME);
	}
}
