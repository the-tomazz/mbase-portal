<?php

namespace App\Orchid\Layouts;

use App\Models\BearsBiometryAnimalHandling;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
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
			/*
			TD::make('is_alive', 'Is alive')
				->render(function (BearsBiometryAnimalHandling $bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->is_alive
						? '<i class="text-success">●</i> ' . __('True')
						: '<i class="text-danger">●</i> ' . __('False');
				})
				->sort()
				->filter(Select::make()->options([
					1   => __('True'),
					0 => __('False'),
				])),
			*/
			TD::make('animal_id', 'Animal')
				->render(function (BearsBiometryAnimalHandling $bearsBiometryAnimalHandling) {
					return Link::make($bearsBiometryAnimalHandling->animal->name)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $bearsBiometryAnimalHandling->animal_id, $bearsBiometryAnimalHandling ]);
				})
				->sort(),

			TD::make('animal_handling_date', 'Handling date')
				->filter(Input::make()->mask('99-99-9999'))
				->sort(),

			TD::make('created_at', 'Created')
				->sort(),
			TD::make('updated_at', 'Last edit')
				->sort(),
		];
    }
}
