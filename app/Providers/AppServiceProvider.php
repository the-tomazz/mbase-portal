<?php

namespace App\Providers;

use App\Models\Language;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\View;
use Orchid\Support\Facades\Dashboard;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        View::composer(
            '*', function ($view) {
                $view->with('languages', Language::all());
            }
        );

        Dashboard::useModel(
            \Orchid\Platform\Models\User::class,
            \App\Models\User::class
        );

        Blade::if(
            'hasAccess', function (string $value) {
                $user = Auth::user();

                if ($user === null) {
                    return false;
                }

                return $user->hasAccess($value);
            }
        );
    }
}
