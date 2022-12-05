<?php

namespace App\Orchid\Resources;

use App\Models\User;
use App\Orchid\BaseResources\BaseList;

class AnimalRemovalList extends BaseList
{
	protected static $moduleList = ['mortbiom'];

    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\AnimalRemovalList::class;
}
