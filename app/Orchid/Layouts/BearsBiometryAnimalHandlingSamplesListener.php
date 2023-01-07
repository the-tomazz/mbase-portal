<?php

namespace App\Orchid\Layouts;

use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingSamplesListener extends Listener
{
	/**
	 * List of field names for which values will be listened.
	 *
	 * @var string[]
	 */
	protected $targets;
	private $maxNumberOfSamples;

	public function __construct($maxNumberOfSamples)
	{
		$this->targets = [];
		for ($sampleNumber=1; $sampleNumber<=$maxNumberOfSamples; $sampleNumber++) {
			$sampleTarget = [
				'bearsBiometryAnimalHandling.sample_code_' . $sampleNumber,
				'bearsBiometryAnimalHandling.sample_tissue_' . $sampleNumber,
				'bearsBiometryAnimalHandling.sample_comment_' . $sampleNumber,
			];

			$this->targets = array_merge($this->targets, $sampleTarget);
		}

		$this->maxNumberOfSamples = $maxNumberOfSamples;
	}

	/**
	 * What screen method should be called
	 * as a source for an asynchronous request.
	 *
	 * The name of the method must
	 * begin with the prefix "async"
	 *
	 * @var string
	 */
	protected $asyncMethod = 'asyncUpdateAnimalHandlingSamplesListenerData';

	/**
	 * @return Layout[]
	 */
	protected function layouts(): iterable
	{
		$previousCanSee = true;
		$biometryAnimalHandlingSampleListenerLayout = [];

		for ($sampleNumber=1; $sampleNumber<$this->maxNumberOfSamples; $sampleNumber++) {
			$canSee = $previousCanSee && isset($this->query) ?
				!is_null($this->query->get('bearsBiometryAnimalHandling.sample_code_'. $sampleNumber)) &&
				$this->query->get('bearsBiometryAnimalHandling.sample_code_' . $sampleNumber) != '' :
				false;

			$biometryAnimalHandlingSampleListenerLayout =
				Layout::rows([
					Input::make('bearsBiometryAnimalHandling.sample_code_' . $sampleNumber)
						->title(__('Sample ') . $sampleNumber . __(' code'))
						->maxlength(10)
						->help(__('Please input the sample ') . $sampleNumber . __(' code'))
						->canSee($previousCanSee),

					Input::make('bearsBiometryAnimalHandling.sample_tissue_' . $sampleNumber)
						->title(__('Sample ') . $sampleNumber . __(' type (sampled tissue)'))
						->maxlength(20)
						->help(__('Please input the Sample ') . $sampleNumber . __(' type (sampled tissue)'))
						->canSee($canSee),

					Input::make('bearsBiometryAnimalHandling.sample_comment_' . $sampleNumber)
						->title(__('Sample ') . $sampleNumber . __(' comment'))
						->maxlength(20)
						->help(__('Please input the Sample ') . $sampleNumber . __(' comment'))
						->canSee($canSee),
				])->canSee($previousCanSee);

			$previousCanSee = $canSee;

			$biometryAnimalHandlingSamplesListenerLayout[] = $biometryAnimalHandlingSampleListenerLayout;
		}

		return $biometryAnimalHandlingSamplesListenerLayout;
	}
}
