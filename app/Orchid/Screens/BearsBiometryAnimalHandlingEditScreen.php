<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Models\AnimalRemovalList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\PlaceTypeList;
use App\Models\SpeciesList;
use App\Models\ToothTypeList;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingEditListener;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Orchid\Alert\Alert;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Label;
use Orchid\Screen\Fields\Map;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingEditScreen extends Screen
{
	public $bearsBiometryAnimalHandling;
    /**
     * Query data.
     *
     * @return array
     */
    public function query(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
    {
		Log::debug('BearsBiometryAnimalHandling query function invoked');

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
        return $this->bearsBiometryAnimalHandling->exists ? 'Edit Bears Biometry Animal Handling' : 'Creating a new Bears Biometry Animal Handling';
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return "Bears Biometry Animal Handling Screen description";
    }

	/**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Button::make('Create Bears Biometry Animal Handling')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->bearsBiometryAnimalHandling->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->bearsBiometryAnimalHandling->exists),

            Button::make('Remove')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->bearsBiometryAnimalHandling->exists),
		];
    }

    public function asyncUpdateAnimalHandlingData(
		$number_of_removal_in_the_hunting_administrative_area
	)
    {
		Log::debug('asyncUpdateAnimalHandlingData triggered');
		Log::debug($number_of_removal_in_the_hunting_administrative_area);
		Log::debug([$this->bearsBiometryAnimalHandling]);

		Log::debug([request()->all()]);

		return [ 
			'bearsBiometryAnimalHandling.number_of_removal_in_the_hunting_administrative_area' => '1231231',
			'bearsBiometryAnimalHandling.telemetry_uid' => '4343',
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
			BearsBiometryAnimalHandlingEditListener::class
		];
    }

	/**
     * @param Post    $bearsBiometryAnimalHandling
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
    {
        $bearsBiometryAnimalHandling->fill($request->get('bearsBiometryAnimalHandling'))->save();

        Alert::info('You have successfully created a Bears Biometry Animal Handling.');

        return redirect()->route('platform.bearsBiometryAnimalHandling.list');
    }

	/**
     * @param Post $bearsBiometryAnimalHandling
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(BearsBiometryAnimalHandling $bearsBiometryAnimalHandling)
    {
        $bearsBiometryAnimalHandling->delete();

        Alert::info('You have successfully deleted the Bears Biometry Animal Handling.');

        return redirect()->route('platform.bearsBiometryAnimalHandling.list');
    }
}
