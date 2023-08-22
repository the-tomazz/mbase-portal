<?php

namespace App\Orchid\Screens\Animal;

use App\Models\Animal;
use App\Orchid\Layouts\AnimalEditListener;
use DateTime;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Illuminate\Http\Request;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Repository;
use Orchid\Support\Color;

class AnimalDataEditScreen extends Screen
{
	/**
	 * @var Animal
	 */
	public $animal;


	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(Animal $animal): iterable
	{
		$animal['died_at_date'] = $animal['died_at'] != null ? (new DateTime($animal['died_at']))->format('j.n.Y') : null;
		$animal['died_at_time'] = $animal['died_at'] != null ? (new DateTime($animal['died_at']))->format('H:i') : null;

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
		return $this->animal->exists ? __('Edit') : __('Create');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		return [
			Button::make(__('Save animal data'))
				->icon('check')
				->method('createOrUpdateAnimal')
		];
	}

	public function asyncUpdateAnimalListenerData($triggers)
	{
		return [
			'animal' => new Repository([
				'id'				=> $triggers['id'] ?? null,
				'status'			=> $triggers['status'] ?? null,
				'died_at_date'		=> $triggers['died_at_date'] ?? null,
				'died_at_time'		=> $triggers['died_at_time'] ?? null,
				'name'				=> $triggers['name'] ?? null,
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
						Button::make(__('Save animal data'))
							->type(Color::DEFAULT())
							->icon('check')
							->method('createOrUpdateAnimal')
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
	public function createOrUpdateAnimal(Animal $animal, Request $request)
	{
		$animalStructure = $request->get('animal');

		if (isset($animalStructure['died_at_date'])) {
			$parsedDate = date_parse_from_format("j.n.Y", $animalStructure['died_at_date']);

			if (isset($animalStructure['died_at_time'])) {
				$parsedTime = date_parse_from_format("H:i", $animalStructure['died_at_time']);
			} else {
				$parsedTime = date_parse_from_format("H:i", '00:00');
			}

			$phpDate = new DateTime($parsedDate['year'] . '-' . $parsedDate['month'] . '-' . $parsedDate['day'] . ' ' . $parsedTime['hour'] . ':' . $parsedTime['minute']);
			$animalStructure['died_at'] = $phpDate;
		}

		if (isset($animalStructure['died_at_date'])) {
			$parsedDate = date_parse_from_format("j.n.Y", $animalStructure['died_at_date']);

			if (isset($animalStructure['died_at_time'])) {
				$parsedTime = date_parse_from_format("H:i", $animalStructure['died_at_time']);
			} else {
				$parsedTime = date_parse_from_format("H:i", '00:00');
			}

			$phpDate = new DateTime($parsedDate['year'] . '-' . $parsedDate['month'] . '-' . $parsedDate['day'] . ' ' . $parsedTime['hour'] . ':' . $parsedTime['minute']);
			$animalStructure['animal_died_at'] = $phpDate;

			$request->merge(['animal' => $animalStructure]);

			$request->validate([
				'animal.animal_died_at' => 'date|before:now'
			]);
		}

		$request->validate([
			'animal.description' => 'string|max:4096'
		]);

		$existingAnimal = Animal::where('name', '=', $request->get('animal')['name'])
			->where('species_list_id', '=', $request->get('animal')['species_list_id'])->first();

		if ($animal->exists && $existingAnimal && $animal->id != $existingAnimal->id) {
			Alert::error(__('Duplicated animal name.') . ' ID: ' . $animal->id);
			return redirect()->route('platform.animals.list');
		}

		$animal->fill($request->get('animal'));

		if ($request->get('animal')['status'] == Animal::STR_DEAD) {
			if ($request->get('animal')['name'] == '') {
				$animal->save();

				$animal->fill([
					'name' => $animal->id
				]);
			}
		}

		$animal->save();

		Alert::info(__('You have successfully updated Animal data.') . ' ID: ' . $animal->id . ' ' . __('Animal name') . ': ' . $animal->name);

		return redirect()->route('platform.animals.list');
	}
}
