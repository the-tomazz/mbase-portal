<?php

namespace App\Orchid\Layouts;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometryData;
use Orchid\Screen\Actions\Link;
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
				->title(__('Animal handling ID')),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_animal_handling_date')
				->title(__('Animal handling date')),

			Label::make('bearsBiometryData.bears_biometry_animal_handling_date_and_time_of_biometry_measurements')
				->title(__('Date and time of biometry measurements')),
		];
	}
}
