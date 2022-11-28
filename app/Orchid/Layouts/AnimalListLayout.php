<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

use Orchid\Filters\Filter;

class AnimalListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'animals';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('id')
				->sort()
				->filter(
					Input::make()->value(1)
				),
			TD::make('status', __("Status"))
				->render(function (Animal $animal) {
					return $animal->status == Animal::STR_ALIVE
						? '<i class="text-success">●</i> ' . __('Alive')
						: '<i class="text-danger">●</i> ' . __('Dead');
				})
				->sort()
				->filter(Select::make()->options([
					Animal::STR_ALIVE => __('Alive'),
					Animal::STR_DEAD => __('Dead'),
				])),
			TD::make('name', "Name")
				->render(function (Animal $animal) {
					return Link::make($animal->name)
					->route('platform.animal.edit', $animal);
				})
				->sort()
				->filter(Input::make()->value('lk0bexsTDy')),
			TD::make('description', __("Description"))
				->sort()
				->filter(Input::make()),

			TD::make('died_at', __('Date of death'))
				->render(function ($model) {
					return $model->died_at->toDateTimeString();
				})
				->sort(),

			TD::make('created_at', __('Date of creation'))
				->render(function ($model) {
					return $model->created_at->toDateTimeString();
				})
				->sort(),

			TD::make('updated_at', __('Update date'))
				->render(function ($model) {
					return $model->updated_at->toDateTimeString();
				})
				->sort(),
		];
    }
}
