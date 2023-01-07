<?php

namespace App\Orchid\Layouts;

use Orchid\Screen\Field;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Layouts\Rows;

class BiometryDataAnimalHandlingLayout extends Rows
{
    /**
     * Used to create the title of a group of form elements.
     *
     * @var string|null
     */
    protected $title;

    /**
     * Get the fields elements to be displayed.
     *
     * @return Field[]
     */
    protected function fields(): iterable
    {
        return [
			Label::make('bearsBiometryData.bears_biometry_animal_handling_id')
						->title(__('Animal handling ID'))
						->disabled(),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_handling_date')
				->title(__('Animal handling date'))
				->disabled(),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_place_of_removal')
				->title(__('Geo location / Local name'))
				->disabled(),
		];
    }
}
