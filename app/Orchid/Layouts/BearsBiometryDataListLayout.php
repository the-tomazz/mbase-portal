<?php

namespace App\Orchid\Layouts;

use App\Models\BearsBiometryData;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;

class BearsBiometryDataListLayout extends Table
{
    /**
     * Data source.
     *
     * The name of the key to fetch it from the query.
     * The results of which will be elements of the table.
     *
     * @var string
     */
    protected $target = 'bearsBiometryDatas';

    /**
     * Get the table cells to be displayed.
     *
     * @return TD[]
     */
    protected function columns(): iterable
    {
        return [
			TD::make('id', 'Id')
				->render(function (BearsBiometryData $bearsBiometryData) {
					return Link::make($bearsBiometryData->id)
					->route('platform.bearsBiometryData.edit', $bearsBiometryData);
			}),

            TD::make('created_at', 'Date of creation')
                ->render(function ($model) {
                    return $model->created_at->toDateTimeString();
                }),

            TD::make('updated_at', 'Update date')
                ->render(function ($model) {
                    return $model->updated_at->toDateTimeString();
			}),
		];
    }
}
