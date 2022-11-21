<?php

namespace App\Orchid\Layouts;

use App\Models\PlaceTypeList;
use App\Models\User;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingSamplesListener extends Listener
{
	/**
     * List of field names for which values will be listened.
     *
     * @var string[]
     */
    protected $targets = [
		'bearsBiometryAnimalHandling.sample_code1',
        'bearsBiometryAnimalHandling.sample_tissue1',
		'bearsBiometryAnimalHandling.attachment1',
	];

    /**
     * What screen method should be called
     * as a source for an asynchronous request.
     *
     * The name of the method must
     * begin with the prefix "async"
     *
     * @var string
     */
    protected $asyncMethod = 'asyncUpdateAnimalHandlingSample1ListenerData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
		if (isset($this->query)) Log::debug(['sample_code1', $this->query->get('bearsBiometryAnimalHandling.sample_code1')]);
		$canSee = isset($this->query) ?
			!is_null($this->query->get('bearsBiometryAnimalHandling.sample_code1')) &&
			$this->query->get('bearsBiometryAnimalHandling.sample_code1') != '' :
			false;
		
		$sampleNumber = 1;

		return [
			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.sample_code' . $sampleNumber)
						->title(__('Sample ' . $sampleNumber . ' code'))
						->maxlength(10)
						->help(__('Please input the sample ' . $sampleNumber . ' code.')),
		
				Input::make('bearsBiometryAnimalHandling.sample_tissue' . $sampleNumber)
					->title(__('Sample ' . $sampleNumber . ' type (sampled tissue)'))
					->maxlength(20)
					->help(__('Please input the Sample ' . $sampleNumber . ' type (sampled tissue).'))
					->canSee($canSee),
	
				Upload::make('bearsBiometryAnimalHandling.attachment' . $sampleNumber)
					->title('Sample ' . $sampleNumber . ' files')
					->canSee($canSee)
			])
		];
    }
}
