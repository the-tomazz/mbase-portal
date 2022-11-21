<?php

namespace App\Orchid\Layouts;

use App\Models\User;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Map;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class MapListenerLayout extends Listener
{
    /**
     * List of field names for which values will be listened.
     *
     * @var string[]
     */
    protected $targets = [
        'bearsBiometryAnimalHandling.place_type_list_id',
        'bearsBiometryAnimalHandling.place_type_list_details',
    ];

    /**
     * What screen method should be called
     * as a source for an asynchronous request.
     *
     * The name of the method must
     * begin with the prefix "async"
     *
     * @var string
     */
    protected $asyncMethod = 'asyncUpdateAnimalHandlingData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
        return [
            Layout::rows([
                Select::make('bearsBiometryAnimalHandling.place_type_list_id')
                    ->fromModel(User::class, 'name')
                    ->empty('Select type')
                    ->title('Place of removal type')
                    ->required()
                    ->help(('Please select the place of removal type.')),

                Input::make('bearsBiometryAnimalHandling.place_type_list_details')
                    ->title(('Other place of removal type'))
                    ->help(('Please insert the other place of removal type.'))
                    ->canSee($this->query->get('bearsBiometryAnimalHandling.place_type_list_id') == 1),
            ]),
        ];
    }
}