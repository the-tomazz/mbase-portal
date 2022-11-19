<?php

namespace App\Orchid\Layouts;

use App\Models\BearsBiometryAnimalHandling;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class BearsBiometryAnimalHandlingListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'bearsBiometryAnimalHandlings';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('animal_id', 'Animal')
				->render(function (BearsBiometryAnimalHandling $bearsBiometryAnimalHandling) {
					return Link::make($bearsBiometryAnimalHandling->animal->name)
					->route('platform.bearsBiometryAnimalHandling.edit', $bearsBiometryAnimalHandling);
			}),

			TD::make('animal_handling_date', 'Handling date'),

			TD::make('created_at', 'Created'),
			TD::make('updated_at', 'Last edit'),
		];
    }
}
