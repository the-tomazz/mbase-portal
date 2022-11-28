<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalListLayout;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;

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
				->defaultSort('id')
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
        return __('Animal List Screen');
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return __("All Animals");
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Link::make('New animal handling')
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
			AnimalListLayout::class
		];
    }
}
