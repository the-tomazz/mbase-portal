<?php

namespace App\Orchid\Screens\Animal;

use App\Models\Animal;
use App\Models\AnimalListView;
use App\Orchid\Layouts\AnimalListLayout;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;

class AnimalListScreen extends Screen
{
	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(): iterable
	{
		$from = request()->input('died_at_from') ?? '1970-01-01';
		$to = request()->input('died_at_to') ?? '2970-01-01';

		return [
			'animals' => AnimalListView::filters()
				->where(function ($query) use ($from, $to) {
					$query->whereDate('died_at', '>=', $from);
					$query->whereDate('died_at', '<=', $to);
				})
				->orWhereNull('died_at')
				->defaultSort('name')
				->paginate(),
			'dateFilterVariable' => 'died_at'
		];
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return __('Animals');
	}

	/**
	 * The description is displayed on the user's screen under the heading
	 */
	public function description(): ?string
	{
		return __('Animals');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		$query = request()->input();
		return [
			Link::make(__('Animal handlings'))
				->icon('list')
				->route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->defaultVisualisationAnimalStatus()]),

			Link::make(__('New animal handling'))
				->icon('pencil')
				->route('platform.animalHandling.create'),

			Link::make(__('Export to XLS'))
				->icon('save')
				->route('app.export.csv.animals', request()->input()),

			Link::make(__('Import from XLS'))
				->icon('cloud-upload')
				->href('/mbase2/batches/mortbiom'),

			DropDown::make(__('Page size'))
				->icon('options-vertical')
				->list([
					Link::make(15)
						->route(Route::currentRouteName(), array_merge($query, ['per_page' => 15, 'page' => 1])),
					Link::make(30)
						->route(Route::currentRouteName(), array_merge($query, ['per_page' => 30, 'page' => 1])),
					Link::make(50)
						->route(Route::currentRouteName(), array_merge($query, ['per_page' => 50, 'page' => 1])),
					Link::make(100)
						->route(Route::currentRouteName(), array_merge($query, ['per_page' => 100, 'page' => 1])),
					Link::make(__('All'))
						->route(Route::currentRouteName(), array_merge($query, ['per_page' => 1000000, 'page' => 1])),
				])
			];
	}

	/**
	 * Views.
	 *
	 * @return \Orchid\Screen\Layout[]|string[]
	 */
	public function layout(): iterable
	{
		return [
			Layout::view('animalMapDisplay'),
			Layout::view('dateToFilter'),
			Layout::rows([
				Group::make([
					DateTimer::make('died_at_from')
						->title(__('Died at earliest'))
						->allowInput()
						->format('d.m.Y'),
					DateTimer::make('died_at_to')
						->title(__('Died at latest'))
						->allowInput()
						->format('d.m.Y'),
					Link::make(__('Filter'))
						->class('died_at_filter_link')
				])
			]),
			AnimalListLayout::class
		];
	}
}
