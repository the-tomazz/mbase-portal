<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalListLayout;
use Illuminate\Support\Facades\Auth;
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
        return [
			Link::make(__('Animal Handlings'))
				->icon('list')
				->route('platform.animalHandling.list', ['filter[animal_status]' => Auth::user()->defaultVisualisationAnimalStatus()]),

			Link::make(__('New animal handling'))
                ->icon('pencil')
                ->route('platform.bearsBiometryAnimalHandling.edit'),
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
