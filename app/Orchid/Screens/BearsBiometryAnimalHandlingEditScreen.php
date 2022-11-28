<?php

namespace App\Orchid\Screens;

use App\Models\Animal;
use App\Models\AnimalRemovalList;
use App\Models\BearsBiometryAnimalHandling;
use App\Models\BearsBiometrySample;
use App\Models\SpeciesList;
use App\Models\ToothTypeList;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingGeoLocationListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingHunterFinderSwitchListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingPlaceTypeListListener;
use App\Orchid\Layouts\BearsBiometryAnimalHandlingSamplesListener;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\Switcher;
use Orchid\Screen\Fields\Upload;
use Orchid\Screen\Repository;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;

class BearsBiometryAnimalHandlingEditScreen extends Screen
{
	private const MAX_SAMPLE_NUMBER=10;

	public $bearsBiometryAnimalHandling;
	public $animal;
    /**
     * Query data.
     *
     * @return array
     */
    public function query(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling): iterable
    {
		if ($bearsBiometryAnimalHandling->exists) {
			// HACK, Stanko, this is for you :)
			$bearsBiometryAnimalHandling['geo_location'] = [
				'lat' => $bearsBiometryAnimalHandling->lat,
				'lng' => $bearsBiometryAnimalHandling->lng,
			];
		} else {
			$bearsBiometryAnimalHandling['geo_location'] = [
				'lat' => 46.044705,
				'lng' => 15.2424903,
			];

			if ($animal->exists) {
				$bearsBiometryAnimalHandling['animal_id'] = $animal->id;
			}
		}

		$sampleNumber = 1;
		foreach ($bearsBiometryAnimalHandling->samples as $sample) {
			$bearsBiometryAnimalHandling['sample_code_' . $sampleNumber] = $sample->sample_code;
			$bearsBiometryAnimalHandling['sample_tissue_' . $sampleNumber] = $sample->sample_tissue;
			$bearsBiometryAnimalHandling['sample_comment_' . $sampleNumber] = $sample->sample_comment;

			$sampleNumber++;
		}

		Log::debug(['BearsBiometryAnimalHandling query', $bearsBiometryAnimalHandling]);

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
        return $this->bearsBiometryAnimalHandling->exists ? __('Edit Biometry Animal Handling') : __('Creating a new Biometry Animal Handling');
    }

	/**
     * The description is displayed on the user's screen under the heading
     */
    public function description(): ?string
    {
        return __("Biometry Animal Handling Create / Update Screen");
    }

	/**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
			Button::make(__('Create Animal Handling'))
                ->icon('pencil')
                ->method('createOrUpdateAndDoNotAddBiometryData')
                ->canSee(!$this->bearsBiometryAnimalHandling->exists),

			Button::make(__('Create Animal Handling and add Biometry Data'))
                ->icon('pencil')
                ->method('createOrUpdateAndAddBiometryData')
                ->canSee(!$this->bearsBiometryAnimalHandling->exists),

            Button::make(__('Update'))
                ->icon('note')
                ->method('createOrUpdateAndDoNotAddBiometryData')
                ->canSee($this->bearsBiometryAnimalHandling->exists),

			Button::make(__('Update and add Biometry Data'))
                ->icon('note')
                ->method('createOrUpdateAndAddBiometryData')
                ->canSee($this->bearsBiometryAnimalHandling->exists),

            Button::make('Remove')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->bearsBiometryAnimalHandling->exists),
		];
    }

    public function asyncUpdateAnimalHandlingPlaceTypeListListenerData($triggers)
    {
        return [
            'bearsBiometryAnimalHandling' => new Repository([
                'place_type_list_id'      => $triggers['place_type_list_id'],
                'place_type_list_details' => $triggers['place_type_list_details'] ?? null,
            ]),
        ];
    }

	public function asyncUpdateAnimalHandlingGeoLocationListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalHandlingGeoLocationListenerData', $triggers]);

		$lng = $triggers['geo_location']['lng'];
		$lat = $triggers['geo_location']['lat'];

		$results = DB::select('
			SELECT
				gid
			FROM
				mbase2_ge.spatial_units
			WHERE
				public.ST_Contains(
					geom,
					public.ST_SetSRID(
						public.ST_Point(
							?,
							?
						),
						4326
					)
				)
		', [ $lng, $lat ]);

		if (count($results)>0) {
			$gid = $results[0]->gid;

			$LUOResults = DB::select('
				select
					spatial_unit_filter_element_id,
					spatial_unit_filter_elements.name
				from
					spatial_units_spatial_unit_filter_elements
				join
					spatial_unit_filter_elements
				on
					spatial_unit_filter_elements.id = spatial_unit_filter_element_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_elements.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
			', [ $gid, '__-LUO' ]);

			$LOVResults = DB::select('
				select
					spatial_unit_filter_element_id,
					spatial_unit_filter_elements.name
				from
					spatial_units_spatial_unit_filter_elements
				join
					spatial_unit_filter_elements
				on
					spatial_unit_filter_elements.id = spatial_unit_filter_element_id
				join
					spatial_unit_filter_types
				on
					spatial_unit_filter_types.id = spatial_unit_filter_elements.spatial_unit_filter_type_id
				where
					spatial_unit_gid = ?
				and
					spatial_unit_filter_types.slug like ?
			', [ $gid, '__-LOV' ]);

			if (count($LUOResults)>0) {
				Log::debug($LUOResults[0]->name);
				$LUO = json_decode($LUOResults[0]->name)->name;
			}

			if (count($LOVResults)>0) {
				Log::debug($LOVResults[0]->name);
				$LOV = json_decode($LOVResults[0]->name)->name;
			}

			return [
				'bearsBiometryAnimalHandling' => [
					'geo_location' => new Repository([
						'lat' => $triggers['geo_location']['lat'],
						'lng' => $triggers['geo_location']['lng'],
					]),
					'hunting_management_area' => $LUO ?? '',
					'hunting_ground' => $LOV ?? '',
					'gid' => $gid
				],
			];
		} else {
			return [
				'bearsBiometryAnimalHandling' => [
					'geo_location' => new Repository([
						'lat' => $triggers['geo_location']['lat'],
						'lng' => $triggers['geo_location']['lng'],
					]),
					'hunting_management_area' => 'N/A',
					'hunting_ground' => 'N/A',
					'gid' => null

				],
			];
		}
	}

	public function asyncUpdateAnimalHandlingHunterFinderSwitchListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalHandlingHunterFinderSwitchListenerData', $triggers]);

        return [
            'bearsBiometryAnimalHandling' => new Repository([
                'unknown_hunter_finder'      => $triggers['unknown_hunter_finder'],
                'hunter_finder_name' => $triggers['hunter_finder_name'] ?? null,
				'hunter_finder_surname' => $triggers['hunter_finder_surname'] ?? null,
            ]),
        ];
	}

	public function asyncUpdateAnimalHandlingSamplesListenerData($triggers)
    {
		Log::debug(['asyncUpdateAnimalHandlingSamplesListenerData', $triggers]);

		$repositoryElements = [];
		for ($sampleNumber=1; $sampleNumber<=self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$repositoryElement = [
				'sample_code_' . $sampleNumber	=> $triggers['sample_code_' . $sampleNumber] ?? null,
                'sample_tissue_' . $sampleNumber => $triggers['sample_tissue_' . $sampleNumber] ?? null,
				'sample_comment_' . $sampleNumber => $triggers['sample_comment_' . $sampleNumber] ?? null,
			];

			$repositoryElements = array_merge($repositoryElements, $repositoryElement);
		}

		Log::debug(['repositoryElements', $repositoryElements]);

		return [
			'bearsBiometryAnimalHandling' => new Repository($repositoryElements)
		];
	}

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
		$preBiometryAnimalHandlingSampleListeners = [
			Layout::columns([
				Layout::rows([
					// LEFT COLUMN START
					Select::make('bearsBiometryAnimalHandling.animal_id')
						->fromModel(Animal::class, 'name')
						->title(__('Animal'))
						->help(__('Please select the ID of the individual, if the animal is known.'))
						->empty(__('<Empty>')),

					Select::make('bearsBiometryAnimalHandling.species_list_id')
						->fromModel(SpeciesList::class, 'name')
						->title(__('Species'))
						->required()
						->help(__('Please select species.')),

					Input::make('bearsBiometryAnimalHandling.number_of_removal_in_the_hunting_administrative_area')
						->mask('999999999999-9999')
						->title(__('Number and the year of removal in hunting administrative area'))
						->help(__('Please insert number and the year of removal in hunting administrative area.')),

					Select::make('bearsBiometryAnimalHandling.animal_removal_list_id')
						->fromModel(AnimalRemovalList::class, 'name')
						->title(__('Type of removal'))
						->required()
						->help(__('Please select the type of removal.')),

					Input::make('bearsBiometryAnimalHandling.telemetry_uid')
						->title(__('Ear-tag number or radio-collar (telemetry) identification'))
						->help(__('Please describe animal-borne markings (ear-tags, collar, microchips, etc.).')),

					Input::make('bearsBiometryAnimalHandling.animal_handling_date')
						->required()
						->type('datetime-local')
						->title(__('Date and time')),
						// ->value('2011-08-19T13:45:00')
						// ->horizontal(),

					Input::make('bearsBiometryAnimalHandling.place_of_removal')
						->title(__('Geographical location/Local name'))
						->help(__('Please insert geographical location/Local name.')),
					// LEFT COLUMN END
				]),

				BearsBiometryAnimalHandlingGeoLocationListener::class,
			]),

			BearsBiometryAnimalHandlingPlaceTypeListListener::class,

			BearsBiometryAnimalHandlingHunterFinderSwitchListener::class,

			Layout::rows([
				Input::make('bearsBiometryAnimalHandling.witness_accompanying_person_name')
					->title(__('Witness/Accompanying person name'))
					->help(__('Please insert the name of the Witness/Accompanying person')),

				Input::make('bearsBiometryAnimalHandling.witness_accompanying_person_surname')
					->title(__('Witness/Accompanying person surname'))
					->help(__('Please insert the surname of the Witness/Accompanying person')),
			]),
		];

		$biometryAnimalHandlingSamplesListeners = [
			new BearsBiometryAnimalHandlingSamplesListener(self::MAX_SAMPLE_NUMBER)
		];

		/*
		for ($sampleNumber=1; $sampleNumber<=self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$biometryAnimalHandlingSamplesListeners[] = new BearsBiometryAnimalHandlingSamplesListener($sampleNumber);
		}
		*/

		$postBiometryAnimalHandlingSampleListeners = [
			// SAMPLES TYPE SECTION START
			Layout::rows([
				Group::make([
					Switcher::make('bearsBiometryAnimalHandling.hair_sample_taken')
						->sendTrueOrFalse()
						->title(__('Hair sample collected'))
						->help(__('Please note if hair sample has been collected')),

					Switcher::make('bearsBiometryAnimalHandling.blood_sample_taken')
						->sendTrueOrFalse()
						->title(__('Blood sample collected?'))
						->help(__('Please note if Blood sample has been collected?')),

					Select::make('bearsBiometryAnimalHandling.tooth_type_list_id')
						->fromModel(ToothTypeList::class, 'name')
						->title(__('Tooth Type'))
						->help(__('Please select the Tooth Type.'))
						->empty(__('<Empty>')),
				])->autoWidth(),
			]),
			// SAMPLES TYPE SECTION END

			// TAXIDERMIST SECTION START
			Layout::rows([
				Group::make([
					Input::make('bearsBiometryAnimalHandling.taxidermist_name')
						->title(__('Taxidermist name'))
						->help(__('Please insert the name of the Taxidermist')),

					Input::make('bearsBiometryAnimalHandling.taxidermist_surname')
						->title(__('Taxidermist surname'))
						->help(__('Please insert the surname of the Taxidermist')),
				])->autoWidth(),
			])
			// TAXIDERMIST SECTION END
		];

		return array_merge(
			$preBiometryAnimalHandlingSampleListeners,
			$biometryAnimalHandlingSamplesListeners,
			$postBiometryAnimalHandlingSampleListeners
		);
    }

	/**
     * @param Animal    $animal
	 * @param BearsBiometryAnimalHandling    $bearsBiometryAnimalHandling
     * @param Request $request
     */
    private function createOrUpdate(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
    {
		Log::debug(['createOrUpdate BearsBiometryAnimalHandling', $request->get('bearsBiometryAnimalHandling')]);

        $bearsBiometryAnimalHandling->fill($request->get('bearsBiometryAnimalHandling'));
		$bearsBiometryAnimalHandling->lat = $request->get('bearsBiometryAnimalHandling')['geo_location']['lat'];
		$bearsBiometryAnimalHandling->lng = $request->get('bearsBiometryAnimalHandling')['geo_location']['lng'];
		$bearsBiometryAnimalHandling->save();

		if ($bearsBiometryAnimalHandling->samples()) {
			$bearsBiometryAnimalHandling->samples()->delete();
		}

		for ($sampleNumber=1; $sampleNumber<=self::MAX_SAMPLE_NUMBER; $sampleNumber++) {
			$bearsBiometrySample = new BearsBiometrySample();

			$sampleCode = $request->get('bearsBiometryAnimalHandling')['sample_code_' . $sampleNumber] ?? '';

			if ($sampleCode!='') {
				$bearsBiometrySampleData = [
					'bears_biometry_animal_handling_id' => $bearsBiometryAnimalHandling->id,
					'sample_code' => $sampleCode,
					'sample_tissue' => $request->get('bearsBiometryAnimalHandling')['sample_tissue_' . $sampleNumber],
					'sample_comment' => $request->get('bearsBiometryAnimalHandling')['sample_comment_' . $sampleNumber],
				];

				$bearsBiometrySample->fill($bearsBiometrySampleData)->save();
			}
		}

		Log::debug(['bearsBiometryAnimalHandling createOrUpdate', $request->get('bearsBiometryAnimalHandling')]);

        Alert::info(__('You have successfully created or updated a Biometry Animal Handling.'));
    }

	/**
     * @param Animal    $animal
	 * @param BearsBiometryAnimalHandling    $bearsBiometryAnimalHandling
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdateAndDoNotAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
    {
		$this->createOrUpdate($animal, $bearsBiometryAnimalHandling, $request);

        return redirect()->route('platform.bearsBiometryAnimalHandling.list');
    }

	/**
     * @param Animal    					$animal
	 * @param BearsBiometryAnimalHandling	$bearsBiometryAnimalHandling
     * @param Request 						$request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdateAndAddBiometryData(Animal $animal, BearsBiometryAnimalHandling $bearsBiometryAnimalHandling, Request $request)
    {
		$this->createOrUpdate($animal, $bearsBiometryAnimalHandling, $request);

        return redirect()->route('platform.bearsBiometryData.edit', $bearsBiometryAnimalHandling );
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

        Alert::info(__('You have successfully deleted the Biometry Animal Handling.'));

        return redirect()->route('platform.bearsBiometryAnimalHandling.list');
    }
}
