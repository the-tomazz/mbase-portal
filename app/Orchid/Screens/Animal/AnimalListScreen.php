<?php

namespace App\Orchid\Screens\Animal;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalListLayout;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Orchid\Screen\Actions\DropDown;
use Orchid\Screen\Actions\Link;
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
		return [
			'animals' => Animal::filters()
				->defaultSort('name')
				->paginate()
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
				->route('platform.animalHandling.edit'),

			Link::make(__('Export to XLS'))
				->icon('save')
				->route('app.export.csv.animals', request()->input()),

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
			AnimalListLayout::class
		];
	}
}
