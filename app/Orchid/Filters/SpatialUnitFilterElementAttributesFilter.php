<?php

namespace App\Orchid\Filters;

use App\Models\SpatialUnitFilterElement;
use Illuminate\Database\Eloquent\Builder;
use Orchid\Filters\Filter;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Input;

class SpatialUnitFilterElementAttributesFilter extends Filter
{
	/**
	 * The displayable name of the filter.
	 *
	 * @return string
	 */
	public function name(): string
	{
		return __('Element Attribute Filters');
	}

	/**
	 * The array of matched parameters.
	 *
	 * @return array|null
	 */
	public function parameters(): ?array
	{
		return ['slug', 'name'];
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
			$query = SpatialUnitFilterElement::query();
			if($this->request->get('slug') != null)
				$query = $query->where('slug', 'LIKE', '%'.$this->request->get('slug').'%');
			if($this->request->get('name') != null)
				$query->orWhere('name', 'LIKE', '%'.$this->request->get('name').'%');
			return $query;
		}
		$query = SpatialUnitFilterElement::query()
			->join('spatial_unit_filter_type_countries', function ($join) {
				$join->on('spatial_unit_filter_type_countries.spatial_unit_filter_type_id', '=', 'spatial_unit_filter_elements.spatial_unit_filter_type_id')
					->where('spatial_unit_filter_type_countries.country_id', '=', auth()->user()->country->id);
			});

		if($this->request->get('slug') != null)
			$query = $query->where('slug', 'LIKE', '%'.$this->request->get('slug').'%');
		if($this->request->get('name') != null)
			$query->orWhere('name', 'LIKE', '%'.$this->request->get('name').'%');

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
			Input::make('name')
				->type('text')
				->value($this->request->get('name'))
				->placeholder('Search...')
				->title('Name')
		];
	}
}
