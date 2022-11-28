<?php

namespace App\Orchid\Screens;

use App\Models\AnimalHandlingListView;
use App\Orchid\Layouts\AnimalHandlingListViewListLayout;
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
			'animalHandlings' => AnimalHandlingListView::filters()
				->defaultSort('updated_at')
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
        return __('Animal Handling List');
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return __("All Animal Handlings");
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

			Link::make('Export to XLS')
                ->icon('save')
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
			Layout::view('animalHandlingMapDisplay'),
			AnimalHandlingListViewListLayout::class
		];
    }
}
