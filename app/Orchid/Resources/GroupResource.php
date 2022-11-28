<?php

namespace App\Orchid\Resources;

use App\Models\GroupType;
use App\Orchid\Filters\GroupAttributesFilter;
use App\Orchid\Filters\GroupFilterByCountry;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class GroupResource extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\Group::class;

    /**
     * Get the fields displayed by the resource.
     *
     * @return array
     */
    public function fields(): array
    {
		return [
			Input::make('slug')
				->title('Slug'),
			Input::make('name')
				->title('Name'),
			Select::make('group_type_id')
				->title('Group type')
				->fromModel(GroupType::class ,'name')
		];
    }

    /**
     * Get the columns displayed by the resource.
     *
     * @return TD[]
     */
    public function columns(): array
    {
        return [
			TD::make('id'),
			TD::make('slug', "Slug"),
			TD::make('name', "Name"),
			TD::make('group_type_id', "Group type")->render(
				function ($model) {
					return GroupType::where('id', $model->group_type_id)->first()->name;
				}
			),

			/* TD::make('created_at', 'Date of creation')
                ->render(function ($model) {
                    return $model->created_at->toDateTimeString();
                }),

            TD::make('updated_at', 'Update date')
                ->render(function ($model) {
                    return $model->updated_at->toDateTimeString();
                }), */
        ];
    }

    /**
     * Get the sights displayed by the resource.
     *
     * @return Sight[]
     */
    public function legend(): array
    {
			return [
				Sight::make('id', 'Id'),
				Sight::make('slug', 'Slug'),
				Sight::make('name', 'Name'),
				Sight::make('created_at', 'Date of creation'),
				Sight::make('updated_at', 'Update date'),
				Sight::make('group_type_id', 'Group type')->render(
					function ($model) {
						return GroupType::where('id', $model->group_type_id)->first()->name;
					}
				),
			];
    }

    /**
     * Get the filters available for the resource.
     *
     * @return array
     */
    public function filters(): array
    {
        return [
			GroupFilterByCountry::class,
			GroupAttributesFilter::class,
		];
    }

}
