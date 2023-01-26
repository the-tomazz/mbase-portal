<?php

namespace App\Orchid\Screens\AnimalHandling;

use App\Models\AnimalHandlingListView;
use App\Orchid\Layouts\AnimalHandlingListViewListLayout;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
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
		$perPage = request()->input('per_page') ?? 5;

		return [
			'animalHandlings' => AnimalHandlingListView::filters()->paginate($perPage)->withQueryString()
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
		return [
			Link::make(__('New animal handling'))
				->icon('pencil')
				->route('platform.animalHandling.edit'),

			Link::make(__('Animals'))
				->icon('list')
				->route('platform.animals.list', ['filter[status]' => Auth::user()->defaultVisualisationAnimalStatus()]),

			Link::make(__('Export to XLS'))
				->icon('save')
				->route('app.export.csv.animalhandlings', request()->input()),

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
			Layout::view('animalHandlingMapDisplay'),
			AnimalHandlingListViewListLayout::class
		];
	}

	public function action(): void
	{
		Toast::info('Hello, world! This is a toast message.');
	}
}
