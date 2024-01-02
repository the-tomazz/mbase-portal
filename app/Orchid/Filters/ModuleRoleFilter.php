<?php

declare(strict_types=1);

namespace App\Orchid\Filters;

use App\Models\Group;
use App\Models\GroupType;
use Illuminate\Database\Eloquent\Builder;
use Orchid\Filters\Filter;
use Orchid\Platform\Models\Role;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Select;

class ModuleRoleFilter extends Filter
{
	/**
	 * @return string
	 */
	public function name(): string
	{
		return __('MBASE2 module roles');
	}

	/**
	 * The array of matched parameters.
	 *
	 * @return array|null
	 */
	public function parameters(): ?array
	{
		return ['module_role'];
	}

	/**
	 * @param Builder $builder
	 *
	 * @return Builder
	 */
	public function run(Builder $builder): Builder
	{
		return $builder->whereHas('groups', function (Builder $query) {
			$query->where('slug', $this->request->get('module_role'));
		});
	}

	/**
	 * @return Field[]
	 */
	public function display(): array
	{
		return [
			Select::make('module_role')
				->fromQuery(Group::where('group_type_id', '=', GroupType::MBASE2_MODULE_ROLES), 'name', 'slug')
				->empty(__('<Select>'))
				->value($this->request->get('module_role'))
				->title(__('MBASE2 module roles')),
		];
	}

	/**
	 * @return string
	 */
	public function value(): string
	{
		return $this->name() . ': ' . Group::where('slug', $this->request->get('module_role'))->first()->name;
	}
}
