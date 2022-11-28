<?php

namespace App\Orchid\Screens;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometrySample;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Relation;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Alert;
use Orchid\Support\Facades\Layout;

class BearsBiometrySampleEditScreen extends Screen
{
	public $bearsBiometrySample;

    /**
     * Query data.
     *
     * @return array
     */
    public function query(BearsBiometrySample $bearsBiometrySample): iterable
    {
		return [
			'bearsBiometrySample' => $bearsBiometrySample
		];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->bearsBiometrySample->exists ? __('Edit Biometry Sample') : __('Creating a new Biometry Sample');
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return __("Sample Screen description");
    }


    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Button::make('Create Biometry Sample')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->bearsBiometrySample->exists),

            Button::make('Update')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->bearsBiometrySample->exists),

            Button::make('Remove')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->bearsBiometrySample->exists),
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
			Layout::rows([
				Relation::make('bearsBiometrySample.bears_biometry_animal_handling_id')
					->title('Animal handling')
					->fromModel(BearsBiometryAnimalHandling::class, 'id'),

				Input::make('bearsBiometrySample.sample_code')
					->title(__('Sample code'))
					->maxlength(10)
					->help(__('Please input the sample code.')),

				Input::make('bearsBiometrySample.sample_tissue')
					->title(__('Sample type (sampled tissue)'))
					->maxlength(20)
					->help(__('Please input the Sample type (sampled tissue).')),

				Input::make('bearsBiometrySample.sample_comment')
					->title(__('Note'))
					->maxlength(20)
					->help(__('Please input the note')),
			]),
		];
    }

	/**
     * @param Post    $bearsBiometrySample
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(BearsBiometrySample $bearsBiometrySample, Request $request)
    {
        $bearsBiometrySample->fill($request->get('bearsBiometrySample'))->save();

        Alert::info(__('You have successfully created or updated a Biometry Sample.'));

        return redirect()->route('platform.bearsBiometrySample.list');
    }

    /**
     * @param Post $bearsBiometrySample
     *
     * @return \Illuminate\Http\RedirectResponse
     * @throws \Exception
     */
    public function remove(BearsBiometrySample $bearsBiometrySample)
    {
        $bearsBiometrySample->delete();

        Alert::info(__('You have successfully deleted the Biometry Sample.'));

        return redirect()->route('platform.bearsBiometrySample.list');
    }
}
