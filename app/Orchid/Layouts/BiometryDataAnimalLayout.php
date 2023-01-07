<?php

namespace App\Orchid\Layouts;

use Orchid\Screen\Field;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Layouts\Rows;

class BiometryDataAnimalLayout extends Rows
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
			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_id')
				->title(__('Animal ID'))
				->disabled(),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_name')
				->title(__('Animal name'))
				->disabled(),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_species_list_name')
				->title(__('Animal species'))
				->disabled(),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_status')
				->title(__('Animal status'))
				->disabled(),
		];
    }
}
