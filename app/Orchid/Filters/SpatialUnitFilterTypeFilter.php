<?php

namespace App\Orchid\Filters;

use App\Models\SpatialUnitFilterType;
use Illuminate\Database\Eloquent\Builder;
use Orchid\Filters\Filter;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Input;

class SpatialUnitFilterTypeFilter extends Filter
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

		if(auth()->user()->country == null) {
			return SpatialUnitFilterType::query();
		}

		return SpatialUnitFilterType::query()
			->join('spatial_unit_filter_type_countries', function($join) {
				$join->on('spatial_unit_filter_type_countries.spatial_unit_filter_type_id', '=', 'spatial_unit_filter_types.id')
					->where('spatial_unit_filter_type_countries.country_id', '=', auth()->user()->country->id);
			});
    }

    /**
     * Get the display fields.
     *
     * @return Field[]
     */
    public function display(): iterable
    {
        return [Input::make('???')];
    }
}
