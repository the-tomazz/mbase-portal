<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalEditListener;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Repository;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Screen;

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
        return [
			Button::make(__('Create animal'))
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->animal->exists),

			Button::make(__('Create animal and add animal handling'))
                ->icon('pencil')
                ->method('createOrUpdateAndAddAnimalHandling')
                ->canSee(!$this->animal->exists),

            Button::make(__('Update'))
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->animal->exists),

			Button::make(__('Update animal and add animal handling'))
                ->icon('note')
                ->method('createOrUpdateAndAddAnimalHandling')
                ->canSee($this->animal->exists),

            Button::make(__('Remove'))
                ->icon('trash')
                ->method('remove')
                ->canSee($this->animal->exists),
		];
    }

	public function asyncUpdateAnimalListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalListenerData', $triggers]);

        return [
            'animal' => new Repository([
                'is_alive'		=> $triggers['is_alive'],
				'value'			=> $triggers['value'] ?? null,
                'name'			=> $triggers['name'] ?? null,
				'description'	=> $triggers['description']
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
			AnimalEditListener::class
		];
    }

	/**
     * @param Animal $animal
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Animal $animal, Request $request)
    {
        $animal->fill($request->get('animal'));

		if (!$request->get('animal')['is_alive']) {
			$defaultData = [
				'value' => 'N/A',
				'name' => 'N/A'
			];

			$animal->fill($defaultData)->save();

			$correctData = [
				'value' => $animal->id,
				'name' => $animal->id
			];

			$animal->fill($correctData)->save();
		}

        Alert::info(__('You have successfully created or updated an Animal.'));

        return redirect()->route('platform.animal.list');
    }

	/**
     * @param Animal $animal
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdateAndAddAnimalHandling(Animal $animal, Request $request)
    {
        $animal->fill($request->get('animal'));

		if (!$request->get('animal')['is_alive']) {
			$defaultData = [
				'value' => 'N/A',
				'name' => 'N/A'
			];

			$animal->fill($defaultData)->save();

			$correctData = [
				'value' => $animal->id,
				'name' => $animal->id
			];

			$animal->fill($correctData)->save();
		}

        Alert::info(__('You have successfully created an Animal.'));

        return redirect()->route('platform.bearsBiometryAnimalHandling.edit', $animal);
    }

    /**
     * @param Post $bearsBiometrySample
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Animal $animal)
    {
        $animal->delete();

        Alert::info(__('You have successfully deleted the Animal.'));

        return redirect()->route('platform.animal.list');
    }
}
