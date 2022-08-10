<?php
declare(strict_types=1);

namespace App\Orchid\Layouts\User;

use App\Models\Group;
use App\Models\UsersGroups;
use Orchid\Screen\Field;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Layouts\Rows;

class UserGroupsLayout extends Rows
{
    /**
     * Views.
     *
     * @return Field[]
     */
    public function fields(): array
    {
        //        $query = UsersGroups::query()
        //            ->join('groups as user_countries', function($join) {
        //                    $join->on('user_countries.id', '=', 'users_groups.group_id')
        //                         ->where('user_countries.group_type_id', '=', 1);
        //                })
        //            ->join('group_types_countries', 'group_types_countries.country_id', '=', 'user_countries.id')
        //            ->join('groups_group_types_countries', 'groups_group_types_countries.group_type_country_id', '=', 'group_types_countries.id')
        //            ->join('groups', 'groups.id', '=', 'groups_group_types_countries.group_id')
        //            ->where('users_groups.user_id', '=', auth()->user()->id)
        //            ->where('groups.group_type_id', '<>', 1)
        //            ->select(['user_countries.id', 'user_countries.slug', 'groups.id', 'groups.slug'])
        //            ->orderBy('user_countries.id')
        //            ->orderBy('groups.group_type_id')
        //            ->orderBy('groups.id')
        //            ->orderBy('groups.slug');

        if(auth()->user()->country == null) {
            $query = Group::query()->join(
                'groups_group_types_countries', function ($join) {
                    $join->on('groups_group_types_countries.group_id', '=', 'groups.id')
                        ->where('groups.group_type_id', '<>', 1);
                }
            );
            return [
            Select::make('user.groups.')
                ->fromQuery($query, "name")
                ->multiple()
                ->title(__('Groups'))
                ->help('Specify which groups this account should belong to'),
            ];
        }

        $query = Group::query()
            ->join(
                'groups_group_types_countries', function ($join) {
                    $join->on('groups_group_types_countries.group_id', '=', 'groups.id')
                        ->where('groups.group_type_id', '<>', 1);
                }
            )
        ->join(
            'group_types_countries', function ($join) {
                $join->on('group_types_countries.id', '=', 'groups_group_types_countries.group_type_country_id')
                    ->where('group_types_countries.country_id', '=', auth()->user()->country->id);
            }
        )->select(['groups.id', 'groups.slug', 'groups.name', 'groups.group_type_id']);


        return [
        Select::make('user.groups.')
            ->fromQuery($query, "name")
            ->multiple()
            ->title(__('Groups'))
            ->help('Select groups'),
        ];
    }
}
