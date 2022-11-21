<?php

namespace App\Orchid\Screens;

use App\Orchid\Layouts\BearsBiometryAnimalHandlingHunterFinderSwitchListener;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Repository;
use Orchid\Screen\Screen;

class TestScreen2 extends Screen
{
    public function query(): iterable
    {
		return [];
    }

    public function name(): ?string
    {
        return 'test screen 2';
    }

	public function commandBar(): iterable
    {
        return [];
    }

    public function asyncUpdateAnimalHandlingHunterFinderSwitchListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalHandlingHunterFinderSwitchListenerData', $triggers]);
		
        return [
            'bearsBiometryAnimalHandling' => new Repository([
                'unknown_hunter_finder'      => $triggers['unknown_hunter_finder'],
                'hunter_finder_name' => $triggers['hunter_finder_name'] ?? null,
				'hunter_finder_surname' => $triggers['hunter_finder_surname'] ?? null,
            ]),
        ];
	}

    public function layout(): iterable
    {
        return [
			BearsBiometryAnimalHandlingHunterFinderSwitchListener::class,
		];
    }
}
