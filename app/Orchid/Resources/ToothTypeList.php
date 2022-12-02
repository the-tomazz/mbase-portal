<?php

namespace App\Orchid\Resources;

use App\Orchid\BaseResources\BaseList;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class ToothTypeList extends BaseList
{
	/**
	 * The model the resource corresponds to.
	 *
	 * @var string
	 */
	public static $model = \App\Models\ToothTypeList::class;
}
