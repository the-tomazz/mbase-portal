<?php

namespace App\Orchid\Layouts;

use App\Models\Base\BaseList;
use App\Models\SampleTypeList;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
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
						->title(__('Sample ' . $sampleNumber . ' code'))
						->maxlength(10)
						->help(__('Please input the sample code'))
						->canSee($previousCanSee),

					Select::make('bearsBiometryAnimalHandling.sample_tissue_' . $sampleNumber)
						->fromQuery(SampleTypeList::where('status', '=', BaseList::STR_ACTIVE), 'name')
						->empty(__('<Select>'))
						->required()
						->title(__('Sample type'))
						->maxlength(20)
						->help(__('Please input the sample type'))
						->canSee($canSee),

					Input::make('bearsBiometryAnimalHandling.sample_comment_' . $sampleNumber)
						->title(__('Sample comment'))
						->maxlength(20)
						->help(__('Please input the sample comment'))
						->canSee($canSee),
				])->canSee($previousCanSee);

			$previousCanSee = $canSee;

			$biometryAnimalHandlingSamplesListenerLayout[] = $biometryAnimalHandlingSampleListenerLayout;
		}

		return $biometryAnimalHandlingSamplesListenerLayout;
	}
}
