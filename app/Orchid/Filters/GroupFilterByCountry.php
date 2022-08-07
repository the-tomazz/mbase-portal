<?php

namespace App\Orchid\Filters;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use Orchid\Filters\Filter;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Select;

class GroupFilterByCountry extends Filter
{
    /**
     * The displayable name of the filter.
     *
     * @return string
     */
    public function name(): string
    {
        return '';
    }

    /**
     * The array of matched parameters.
     *
     * @return array|null
     */
    public function parameters(): ?array
    {
        return [];
    }

    /**
     * Apply to a given Eloquent query builder.
     *
     * @param Builder $builder
     *
     * @return Builder
     */
    public function run(Builder $builder): Builder
    {

		return $builder
			->join('group_types_countries', 'groups.id', '=', 'group_types_countries.country_id')
			->where('groups.id', 1)
			->select(['groups.id', 'slug', 'name', 'groups.group_type_id'])
			->distinct();
    }

    /**
     * Get the display fields.
     *
     * @return Field[]
     */
    public function display(): iterable
    {
		return [
			Select::make('???')
				->type('text')
				->placeholder('Search...')
				->title('Search')
		];
    }
}
