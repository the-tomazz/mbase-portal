<?php

namespace App\Orchid\Screens\Animal;

use App\Models\Animal;
use App\Models\SexList;
use App\Models\SpeciesList;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Layouts\Modal;
use Orchid\Screen\Screen;
use Orchid\Screen\Sight;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;

class AnimalDataViewScreen extends Screen
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
        return __('Animal')  . ' ID: ' . $this->animal->id;
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
		if ($this->animal->bears_biometry_animal_handlings->count() == 0) {
			return [
				Link::make(__('Update'))
					->icon('pencil')
					->route('platform.animalData.edit', ['animal' => $this->animal]),

				ModalToggle::make('Remove')
					->modal('modalRemove')
					->method('remove')
					->icon('trash'),
			];
		} else {
			return [
				Link::make(__('Update'))
					->icon('pencil')
					->route('platform.animalData.edit', ['animal' => $this->animal]),
			];
		}
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
		$animalSight = [
			Sight::make('name', __('Name')),

			Sight::make('specie_list_id', __('Species'))
				->render(function ($animal) {
					return $animal->species_list->name;
				}),
			Sight::make('sex_list_id', __('Sex'))
				->render(function ($animal) {
					return $animal->sex_list->name;
				}),
			Sight::make('status', __('Status'))
				->render(function ($animal) {
					return $animal->renderStatus();
				}),

			Sight::make('died_at', __('Died at')),

			Sight::make('description', __('Description')),

			Sight::make('created_at', __('Created')),
			Sight::make('updated_at', __('Updated')),
		];

		if (count($this->animal->bearsBiometryAnimalHandlings()->get()) == 0) {
			$animalHandlingsSights = [
				Sight::make('animalHandlings', __('This animal has no handlings recorded')),
			];
		} else {
			$animalHandlingsSights = [];
			foreach ($this->animal->bearsBiometryAnimalHandlings()->orderBy('animal_handling_date')->get() as $animalHandling) {
				$animalHandlingsSights[] = Sight::make('animalHandlings', $animalHandling->animal_handling_date)
					->render(function ($animal) use ($animalHandling) {
						return Link::make('ID: ' . $animalHandling->id . ' ' . ( $animalHandling->bearsBiometryData ? __('(With biometry data)') : ''))
							->route('platform.animalHandling.view', [ $animalHandling->id ])
							->icon('number-list');
					});
			}
		}

        return [
			Layout::legend('animal', $animalSight),
			Layout::legend('animal', $animalHandlingsSights)->title(__('Animal handlings')),

			Layout::modal('modalRemove', [
				Layout::rows([
					Label::make('label')
						->title(__('Are you sure you want to remove this Animal data?'))
						->disabled(),
				]),
			])
				->title(__('Remove Animal data'))
				->size(Modal::SIZE_LG)
				->applyButton(__('Remove'))
				->closeButton(__('Close')),
		];
    }

	/**
     * @param Post $bearsBiometrySample
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(Animal $animal)
    {
		if ($animal->bears_biometry_animal_handlings->count() > 0) {
			Alert::error(__('Cannot delete the animal because it contains one or more handlings. You have to delete the animal handling first!'));
		} else {
			$animal->delete();
			Alert::info(__('You have successfully deleted the animal'));
		}

		return redirect()->route('platform.animals.list');
    }
}
