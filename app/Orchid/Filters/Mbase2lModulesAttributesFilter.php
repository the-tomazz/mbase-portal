<?php

namespace App\Orchid\Filters;

use Illuminate\Database\Eloquent\Builder;
use Orchid\Filters\Filter;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Input;

class Mbase2lModulesAttributesFilter extends Filter
{
    /**
     * The displayable name of the filter.
     *
     * @return string
     */
    public function name(): string
    {
		return __('Mbase2lModule Filters');
    }

    /**
     * The array of matched parameters.
     *
     * @return array|null
     */
    public function parameters(): ?array
    {
        return [
			'slug',
			'name',
			'properties',
			'enabled'
		];
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
        return $builder->where('slug', '=', $this->request->get('slug'))
					   ->orWhere('name', 'LIKE', '%'.$this->request->get('name').'%')
					   ->orWhere('properties', 'LIKE', '%'.$this->request->get('properties').'%')
					   ->orWhere('enabled', '=', $this->request->get('enabled'))
			;
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
				->title('Name'),
			Input::make('properties')
				->type('text')
				->value($this->request->get('properties'))
				->placeholder('Search...')
				->title('Properties')
		];
    }
}
