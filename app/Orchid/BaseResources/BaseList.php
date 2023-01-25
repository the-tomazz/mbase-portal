<?php

namespace App\Orchid\BaseResources;

use App\Models\Base\BaseList as BaseListModel;
use App\Models\User;
use Orchid\Support\Facades\Alert;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Sight;
use Orchid\Screen\TD;

class BaseList extends Resource
{
	private const MAX_DESCRIPTION_LENGTH = 60;

	protected static $moduleList = [];
	/**
	 * Get the resource should be displayed in the navigation
	 *
	 * @return bool
	 */
	public static function displayInNavigation(): bool
	{
		return false;
	}

	protected function groupPermissions(User $user)
	{
		foreach (static::$moduleList as $module)
		{
			if ($user->isInGroup('mbase2', $module, 'admin')) {
				return true;
			}
		}

		return count(static::$moduleList) == 0 && $user->hasRole('MBASE2LAdmin');
	}

	/**
	 * Get the fields displayed by the resource.
	 *
	 * @return array
	 */
	public function fields(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			Input::make('name')
				->title(__('Name')),
			Input::make('description')
				->title(__('Description')),
			Select::make('status')
				->title('Status')
				->options([
					BaseListModel::STR_ACTIVE => __('Active'),
					BaseListModel::STR_INACTIVE => __('Inactive'),
				]),
		];
	}

	/**
	 * Get the columns displayed by the resource.
	 *
	 * @return TD[]
	 */
	public function columns(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			TD::make('id')
				->sort()
				->filter(Input::make()),
			TD::make('name', __('Name'))
				->sort()
				->filter(Input::make()),
			TD::make('description', __('Description'))
				->sort()
				->filter(Input::make())
				->render(function ($model) {
					return strlen($model->description) > self::MAX_DESCRIPTION_LENGTH ?
						substr($model->description, 0, self::MAX_DESCRIPTION_LENGTH) . '...' :
						$model->description;
				}),

			TD::make('status', __('Status'))
				->render(function ($model) {
					return $model->renderStatus();
				})
				->sort()
				->filter(Select::make()->options([
					BaseListModel::STR_ACTIVE => __('Active'),
					BaseListModel::STR_INACTIVE => __('Inactive'),
				])->empty(__('<Select>'))),

			TD::make('created_at', __('Created at'))
				->sort()
				->render(function ($model) {
					return $model->created_at->toDateTimeString();
				}),

			TD::make('updated_at', __('Updated at'))
				->sort()
				->render(function ($model) {
					return $model->updated_at->toDateTimeString();
				}),
		];
	}

	/**
	 * Get the sights displayed by the resource.
	 *
	 * @return Sight[]
	 */
	public function legend(): array
	{
		$this->groupPermissions(auth()->user()) ? null : abort(403);

		return [
			Sight::make('id'),
			Sight::make('name', "Name"),
			Sight::make('description', "Description"),

			Sight::make('status', __('Status'))
				->render(function ($model) {
					return $model->renderStatus();
				}),

			Sight::make('created_at', __('Created at'))
				->render(function ($model) {
					return $model->created_at->toDateTimeString();
				}),

			Sight::make('updated_at', __('Updated at'))
				->render(function ($model) {
					return $model->updated_at->toDateTimeString();
				}),
		];
	}

	/**
	 * Get the filters available for the resource.
	 *
	 * @return array
	 */
	public function filters(): array
	{
		return [];
	}

	public static function permission(): ?string
	{
		return 'mbase2l.admin';
	}

	public static function createButtonLabel(): string
	{
		return __('Create');
	}

	public static function createToastMessage(): string
	{
		return __('The entity was created!');
	}

	public static function updateButtonLabel(): string
	{
		return __('Update');
	}

	public static function updateToastMessage(): string
	{
		return __('The entity was updated!');
	}

	public static function deleteButtonLabel(): string
	{
		return __('Delete');
	}

	public static function deleteToastMessage(): string
	{
		return __('The entity was deleted!');
	}

	/**
	 * Get the text for the list breadcrumbs.
	 *
	 * @return string
	 */
	public static function listBreadcrumbsMessage(): string
	{
		return static::label();
	}

	/**
	 * Get the text for the create breadcrumbs.
	 *
	 * @return string
	 */
	public static function createBreadcrumbsMessage(): string
	{
		return __('Create');
	}

	/**
	 * Get the text for the edit breadcrumbs.
	 *
	 * @return string
	 */
	public static function editBreadcrumbsMessage(): string
	{
		return __('Edit');
	}

}
