<?php

namespace App\Orchid\Screens\AnimalHandling;

use App\Models\Animal;
use App\Models\BearsBiometryAnimalHandling;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\ModalToggle;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Layouts\Modal;
use Orchid\Screen\Screen;
use Orchid\Screen\Sight;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class AnimalHandlingViewScreen extends Screen
{
	public $bearsBiometryAnimalHandling;

	/**
	 * Query data.
	 *
	 * @return array
	 */
	public function query(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
	{
		$bearsBiometryAnimalHandling->load('attachment');

		return [
			'bearsBiometryAnimalHandling' => $bearsBiometryAnimalHandling
		];
	}

	/**
	 * Display header name.
	 *
	 * @return string|null
	 */
	public function name(): ?string
	{
		return __('Animal handling');
	}

	/**
	 * Button commands.
	 *
	 * @return \Orchid\Screen\Action[]
	 */
	public function commandBar(): iterable
	{
		return [
			Link::make(__('Biometry data'))
				->icon('pencil')
				->route('platform.biometryData.view', [ 'bearsBiometryData' => $this->bearsBiometryAnimalHandling->bearsBiometryData ?? -1 ])
				->canSee(isset($this->bearsBiometryAnimalHandling->bearsBiometryData)),

			Link::make(__('Update'))
				->icon('pencil')
				->route('platform.bearsBiometryAnimalHandling.edit', [ 'animal' => $this->bearsBiometryAnimalHandling->animal, 'bearsBiometryAnimalHandling' => $this->bearsBiometryAnimalHandling ]),

			ModalToggle::make('Remove')
				->modal('modalRemove')
				->method('remove')
				->icon('trash'),
		];
	}

	/**
	 * Views.
	 *
	 * @return \Orchid\Screen\Layout[]|string[]
	 */
	public function layout(): iterable
	{
		$sights = [
			Sight::make('bears_biometry_animal_handling_id', __('Animal handling ID'))
				->render(function ($bearsBiometryAnimalHandling) {
					return Link::make($bearsBiometryAnimalHandling->id)
						->route('platform.bearsBiometryAnimalHandling.edit', [ $bearsBiometryAnimalHandling->animal, $bearsBiometryAnimalHandling ])
						->icon('link');
				}),

			Sight::make('animal_handling_date', __('Date and time of animal handling'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->animal_handling_date;
				}),

			Sight::make('date_and_time_of_biometry_measurements', __('Date and time of biometry measurements'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->date_and_time_of_biometry_measurements;
				}),

			Sight::make('place_of_removal', __('Geo location / Local name'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->place_of_removal;
				}),

			Sight::make('attachment', __('Attachments'))->render(function ($bearsBiometryAnimalHandling) {
				$render = '';
				$attachments = $bearsBiometryAnimalHandling->attachment->all();

				$counter = 1;
				foreach ($attachments as $attachment) {
					$render .= '<a href="' . $attachment->url . '">' . $counter++ . '. ' . $attachment->original_name . "</a><br>";
				}
				return $render;
			}),

			Sight::make('', __('Animal')),

			Sight::make('animal_id', __('Animal ID'))
				->render(function ($bearsBiometryAnimalHandling) {
					return Link::make($bearsBiometryAnimalHandling->animal->id)
						->route('platform.animalData.view', [ $bearsBiometryAnimalHandling->animal ])
						->icon('link');
				}),

			Sight::make('animal->name', __('Animal name'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->animal->name;
				}),

			Sight::make('bears_biometry_animal_handling->animal->sex_list_id', __('Sex'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->animal->sex_list->name;
				}),

			Sight::make('animal->species->name', __('Animal species'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->animal->species_list->name;
				}),
			Sight::make('animal->status', __('Animal status'))
				->render(function ($bearsBiometryAnimalHandling) {
					return $bearsBiometryAnimalHandling->animal->status == Animal::STR_ALIVE ? __('Alive') : __('Dead');
				}),
		];

		return [
			Layout::legend('bearsBiometryAnimalHandling', $sights),

			Layout::modal('modalRemove', [
				Layout::rows([
					Label::make('label')
						->title(__('Are you sure you want to remove this animal handling?'))
						->disabled(),
				]),
			])
				->title(__('Remove animal handling'))
				->size(Modal::SIZE_LG)
				->applyButton(__('Remove'))
				->closeButton(__('Close')),
		];
	}

	/**
	 * @param BearsBiometryAnimalHandling $bearsBiometryAnimalHandling
	 *
	 * @return \Illuminate\Http\RedirectResponse
	 * @throws \Exception
	 */
	public function remove(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling)
	{
		$bearsBiometryAnimalHandling->delete();

		Alert::info(__('You have successfully deleted animal handling'));

		return redirect()->route('platform.animalHandling.list');
	}
}
