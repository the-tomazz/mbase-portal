<?php

namespace App\Orchid\Screens;

use App\Orchid\Layouts\MapListenerLayout;
use Orchid\Screen\Repository;
use Orchid\Screen\Screen;

class TestScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'TestScreen';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            MapListenerLayout::class,
        ];
    }

    public function asyncUpdateAnimalHandlingData($triggers)
    {
        return [
            'bearsBiometryAnimalHandling' => new Repository([
                'place_type_list_id'      => $triggers['place_type_list_id'],
                'place_type_list_details' => $triggers['place_type_list_details'] ?? null,
            ]),
        ];
    }
}