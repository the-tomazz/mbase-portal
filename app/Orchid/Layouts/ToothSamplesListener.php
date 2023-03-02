<?php

namespace App\Orchid\Layouts;

use App\Models\Animal;
use App\Models\Base\BaseList;
use App\Models\BiometryLossReasonList;
use App\Models\ConflictAnimalRemovalList;
use App\Models\ToothTypeList;
use App\Models\WayOfWithdrawalList;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Listener;
use Orchid\Support\Facades\Layout;

class ToothSamplesListener extends Listener
{
    /**
     * List of field names for which values will be joined with targets' upon trigger.
     *
     * @var string[]
     */
    protected $extraVars = [];

    /**
     * List of field names for which values will be listened.
     *
     * @var string[]
     */
    protected $targets = [
		'bearsBiometryAnimalHandling.tooth_type_list_id',
		'bearsBiometryAnimalHandling.tooth_type_not_sampled_reason'
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
    protected $asyncMethod = 'asyncUpdateAnimalHandlingToothSamplesListenerData';

    /**
     * @return Layout[]
     */
    protected function layouts(): iterable
    {
		$toothNotSampled = isset($this->query) ? $this->query->get('bearsBiometryAnimalHandling.tooth_type_list_id') == ToothTypeList::TOOTH_NOT_SAMPLED : false;

        return [
			Layout::rows([
				Group::make([
					Select::make('bearsBiometryAnimalHandling.tooth_type_list_id')
					->fromQuery(ToothTypeList::where('status', '=', BaseList::STR_ACTIVE), 'name')
					->title(__('Tooth Type'))
					->help(__('Please select the Tooth Type'))
					->empty(__('<Select>'))
					->required(),

					Input::make('bearsBiometryAnimalHandling.tooth_type_not_sampled_reason')
						->title(__('Tooth not sampled reason'))
						->required()
						// ->help(__('Please enter the permit number'))
						->canSee($toothNotSampled),
				])
			])
		];
    }
}
