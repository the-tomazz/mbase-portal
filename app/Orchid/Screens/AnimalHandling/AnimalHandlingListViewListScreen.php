<?php

namespace App\Orchid\Screens\AnimalHandling;

use App\Models\AnimalHandlingListView;
use App\Models\WayOfWithdrawalList;
use App\Orchid\Layouts\AnimalHandlingListViewListLayout;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;

class AnimalHandlingListViewListScreen extends Screen
{
	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(): iterable
	{
		$from = request()->input('animal_handling_date_from') ?? '1970-01-01';
		$to = request()->input('animal_handling_date_to') ?? '2970-01-01';

		$perPage = request()->input('per_page') ?? 15;

		return [
			'animalHandlings' => AnimalHandlingListView::filters()
				->where(function ($query) use ($from, $to) {
					$query->whereDate('animal_handling_date', '>=', $from);
					$query->whereDate('animal_handling_date', '<=', $to);
					$query->orWhereNull('animal_handling_date');
				})
				->paginate($perPage)
				->withQueryString(),
			'dateFilterVariable' => 'animal_handling_date',
			'dateFilterVariable2' => ''
		];
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return __('Animal handlings');
	}

	/**
	 * The description is displayed on the user's screen under the heading
	 */
	public function description(): ?string
	{
		return __('Animal handlings');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		$query = request()->input();
		return array_merge(
			!Auth::user()->isInGroup('mbase2', 'mortbiom', 'consumers') ?
				[
					Link::make(__('New animal handling'))
						->icon('pencil')
						->route('platform.animalHandling.create')
				] : [],
			[
				Link::make(__('Animals'))
					->icon('list')
					->route('platform.animals.list', ['filter[status]' => Auth::user()->defaultVisualisationAnimalStatus()]),

				Link::make(__('Export to XLS'))
					->icon('save')
					->route('app.export.csv.animalhandlings', request()->input()),

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
			]);
	}

	/**
	 * Views.
	 *
	 * @return \Orchid\Screen\Layout[]|string[]
	 */
	public function layout(): iterable
	{
		return [
			Layout::view('animalHandlingMapDisplay'),
			Layout::view('dateToFilter'),

			Layout::rows([
				Group::make([
					DateTimer::make('animal_handling_date_from')
						->title(__('Handling date earliest'))
						->allowInput()
						->format('d.m.Y'),
					DateTimer::make('animal_handling_date_to')
						->title(__('Handling date latest'))
						->allowInput()
						->format('d.m.Y'),

					Link::make(__('Filter'))
						->class('filter_link')
				])
			]),
			AnimalHandlingListViewListLayout::class
		];
	}
}
