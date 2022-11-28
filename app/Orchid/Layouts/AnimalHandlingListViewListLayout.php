<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\AnimalHandlingListView;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class AnimalHandlingListViewListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'animalHandlings';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('animal_status', 'Animal status')
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return $animalHandlingListView->animal_status == Animal::STR_ALIVE
					? '<i class="text-success">●</i> ' . __('Alive')
					: '<i class="text-danger">●</i> ' . __('Dead');
				})
				->sort()
				->filter(Select::make()->options([
					Animal::STR_ALIVE => __('Alive'),
					Animal::STR_DEAD => __('Dead'),
				])),
			TD::make('animal_name', 'Animal name')
				->render(function (AnimalHandlingListView $animalHandlingListView) {
					return Link::make($animalHandlingListView->animal_name)
					->route('platform.bearsBiometryAnimalHandling.edit', [ $animalHandlingListView->animal_id, $animalHandlingListView ]);
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
