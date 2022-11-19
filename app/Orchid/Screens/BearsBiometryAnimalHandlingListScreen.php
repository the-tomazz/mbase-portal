<?php

namespace App\Orchid\Screens;

use App\Models\BearsBiometryAnimalHandling;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingListLayout;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Screen;

class BearsBiometryAnimalHandlingListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
			'bearsBiometryAnimalHandlings' => BearsBiometryAnimalHandling::paginate()
		];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'BearsBiometryAnimalHandlingListScreen';
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "All Bears Biometry Animal Handlings";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Link::make('Create new')
                ->icon('pencil')
                ->route('platform.bearsBiometryAnimalHandling.edit')
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
			BearsBiometryAnimalHandlingListLayout::class
		];
    }
}
