<?php

namespace App\Orchid\Layouts;

use Orchid\Screen\Field;
use Orchid\Screen\Fields\CheckBox;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Layouts\Rows;

class AnimalHandlingSamplesLayout extends Rows
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
			Group::make([
				Switcher::make('bearsBiometryAnimalHandling.photos_collected')
					->sendTrueOrFalse()
					->title(__('Photos collected')),

				Switcher::make('bearsBiometryAnimalHandling.jaw_photos_collected')
					->sendTrueOrFalse()
					->title(__('Jaw photos collected')),
			])->autoWidth(),

			// images start
			Upload::make('bearsBiometryAnimalHandling.attachment')
				->title(__('All files'))
				->maxFileSize(100) // Size in MB ,
			// images end
		];
    }
}
