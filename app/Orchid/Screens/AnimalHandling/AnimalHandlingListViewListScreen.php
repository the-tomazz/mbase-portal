<?php

namespace App\Orchid\Screens\AnimalHandling;

use App\Models\AnimalHandlingListView;
use App\Orchid\Layouts\AnimalHandlingListViewListLayout;
use Illuminate\Support\Facades\Auth;
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
		return [
			'animalHandlings' => AnimalHandlingListView::filters()->paginate()
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
		return [
			Link::make(__('New animal handling'))
				->icon('pencil')
				->route('platform.bearsBiometryAnimalHandling.edit'),

			Link::make(__('Animals'))
				->icon('list')
				->route('platform.animals.list', ['filter[status]' => Auth::user()->defaultVisualisationAnimalStatus()]),

			Link::make(__('Export to XLS'))
				->icon('save')
				->route('app.export.csv.animalhandlings', request()->input()),
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
