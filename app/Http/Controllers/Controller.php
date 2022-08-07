<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index()
    {
		$isAdmin = false;
		$user = auth()->user();
		if($user != null){
			$isAdmin = $user->permissions != null ? $user->permissions["mbase2l.admin"] : false;
		}
        return view('dashboard', compact('isAdmin'));
    }
}
