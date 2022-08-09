<?php

namespace App\Orchid\Filters;

use App\Models\SpatialUnitFilterType;
use Illuminate\Database\Eloquent\Builder;
use Orchid\Filters\Filter;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Input;

class SpatialUnitFilterTypeAttributesFilter extends Filter
{
    /**
     * The displayable name of the filter.
     *
     * @return string
     */
    public function name(): string
    {
        return __('Spatial Unit Filter Type Filters');
    }

    /**
     * The array of matched parameters.
     *
     * @return array|null
     */
    public function parameters(): ?array
    {
        return ['slug'];
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
			$query =  SpatialUnitFilterType::query();
			if($this->request->get('slug') != null)
				$query = $query->where('slug', 'LIKE', '%'.$this->request->get('slug').'%');
			return $query;
		}

        $query = SpatialUnitFilterType::query()
			->join('spatial_unit_filter_type_countries', function($join) {
				$join->on('spatial_unit_filter_type_countries.spatial_unit_filter_type_id', '=', 'spatial_unit_filter_types.id')
					->where('spatial_unit_filter_type_countries.country_id', '=', auth()->user()->country->id);
			});

		if($this->request->get('slug') != null)
			$query = $query->where('slug', 'LIKE', '%'.$this->request->get('slug').'%');

		return $query;
    }

    /**
     * Get the display fields.
     *
     * @return Field[]
     */
    public function display(): iterable
    {
		return [
			Input::make('slug')
				->type('text')
				->value($this->request->get('slug'))
				->placeholder('Search...')
				->title('Slug'),
		];
    }
}
