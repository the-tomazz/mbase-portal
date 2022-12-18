<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalEditListener;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Repository;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Color;

class AnimalEditScreen extends Screen
{
	public $animal;

    /**
     * Query data.
     *
     * @return array
     */
    public function query(Animal $animal): iterable
    {
        return [
			'animal' => $animal
		];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->animal->exists ? 'Edit Animal' : 'Creating a new Animal';
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Animal Screen description";
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
		if ($this->animal && !$this->animal->bearsBiometryAnimalHandlings) {
			return [
				Button::make(__('Save animal data'))
					->icon('check')
					->method('createOrUpdate'),

				Button::make(__('Remove'))
					->icon('trash')
					->method('remove')
					->canSee($this->animal->exists),
			];
		} else {
			return [
				Button::make(__('Save animal data'))
					->icon('check')
					->method('createOrUpdate')
			];
		}
    }

	public function asyncUpdateAnimalListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalListenerData', $triggers]);

        return [
            'animal' => new Repository([
				'id'				=> $triggers['id'] ?? null,
                'status'			=> $triggers['status'] ?? null,
				'died_at'			=> $triggers['died_at'] ?? null,
                'name'				=> $triggers['name'] ?? null,
				'previous_status' 	=> $triggers['previous_status'] ?? null,
				'species_list_id'	=> $triggers['species_list_id'] ?? null,
				'sex_list_id'		=> $triggers['sex_list_id'] ?? null,
				'description'		=> $triggers['description'] ?? null
            ]),
        ];
	}

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
			AnimalEditListener::class,
			Layout::block([])
				->commands(
					[
						Button::make(__('Save animal'))
							->type(Color::DEFAULT())
							->icon('check')
							->method('createOrUpdateAndNoNotAddAnimalHandling')
					]
				),
		];
    }

	/**
     * @param Animal $animal
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    private function createOrUpdate(Animal $animal, Request $request)
    {
        $animal->fill($request->get('animal'));

		if ($request->get('animal')['status'] == Animal::STR_DEAD) {
			Log::debug($request->get('animal'));

			$animal->fill([
				'previous_status' => Animal::STR_DEAD
			]);

			if ($request->get('animal')['name'] == '') {
				$animal->save();

				$animal->fill([
					'name' => $animal->id
				]);
			}
		}

		$animal->save();

        Alert::info(__('You have successfully updated an Animal.'));

		return redirect()->route('platform.animal.list');
    }

    /**
     * @param Post $bearsBiometrySample
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Animal $animal)
    {
		Log::debug(['animal remove', $animal->bears_biometry_animal_handlings]);

		if ($animal->bears_biometry_animal_handlings->count() > 0) {
			Alert::error(__('Cannot delete the animal because it contains one or more handlings. You have to delete the animal handling first!'));
		} else {
			$animal->delete();

			Alert::info(__('You have successfully deleted the animal'));
		}

		return redirect()->route('platform.animal.list');
    }
}
