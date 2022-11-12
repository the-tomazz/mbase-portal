<?php

namespace App\Orchid\Resources;

use App\Models\BearsBiometryAnimalHandling;
use App\Models\CollarList;
use App\Models\ColorList;
use App\Models\IncisorsWearList;
use App\Models\SexList;
use App\Models\TeatsWearList;
use Orchid\Crud\Resource;
use Orchid\Screen\Fields\Group;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\TD;

class BearsBiometryData extends Resource
{
    /**
     * The model the resource corresponds to.
     *
     * @var string
     */
    public static $model = \App\Models\BearsBiometryData::class;

    /**
     * Get the fields displayed by the resource.
     *
     * @return array
     */
    public function fields(): array
    {
		$premolarsOptions = []; for ($i=0; $i<9; $i++) $premolarsOptions[$i] = $i;

        return [
			Select::make('bears_biometry_animal_handling_id')
				->fromModel(BearsBiometryAnimalHandling::class, 'id')
				->title(__('Animal handling ID'))
				->required()
				->help(__('Please Insert animal handling.')),

			// Sex and age start
			Group::make([
				Select::make('sex_list_id')
					->fromModel(SexList::class, 'id')
					->title(__('Sex'))
					->required()
					->help(__('Select sex of the animal')),

				Input::make('age')
					->mask('99')
					->title(__('Visual age estimate'))
					->help(__('Insert age estimate of the animal (0-25).')),

			])->autoWidth(),
			// Sex and age end

			// Body mass of the animal (In kilograms) start
			Group::make([
				Input::make('masa_bruto')
					->mask('999')
					->title(__('Gross'))
					->help(__('Insert gross mass of the animal (0-400 kg)')),

				Input::make('masa_neto')
					->mask('999')
					->title(__('Net'))
					->help(__('Insert net mass of the animal (0-400 kg)')),

			])->autoWidth(),
			// Body mass of the animal (In kilograms) end

			// Length sizes (In cm with mm accuracy) start
			Group::make([
				Input::make('hrbtna_dolzina')
					->mask('999')
					->title(__('Body length'))
					->help(__('Insert Body length of the animal (0-300 cm)')),

				Input::make('trebusna_dolzina')
					->mask('999')
					->title(__('Body length - inferior'))
					->help(__('Insert Body length - inferior of the animal (0-300 cm)')),

				Input::make('plecna_visina')
					->mask('999')
					->title(__('Shoulder height'))
					->help(__('Insert Shoulder height of the animal (0-150 cm)')),

			])->autoWidth(),
			// Length sizes (In cm with mm accuracy) end

			// Circumferences start
			Group::make([
				Input::make('obseg_glave')
					->mask('999')
					->title(__('Head circumference'))
					->help(__('Insert Head circumference of the animal (0-150 cm)')),

				Input::make('obseg_vratu')
					->mask('999')
					->title(__('Neck circumference'))
					->help(__('Insert Neck circumference of the animal (0-150 cm)')),

				Input::make('obseg_prsnega_kosa')
					->mask('999')
					->title(__('Thorax circumference'))
					->help(__('Insert Thorax circumference of the animal (0-150 cm)')),

				Input::make('obseg_trebuha')
					->mask('999')
					->title(__('Abdomen circumference'))
					->help(__('Insert Abdomen circumference of the animal (0-150 cm)')),

			])->autoWidth(),
			// Circumferences end

			// Sexual characteristics start
			Group::make([
				Input::make('dolzina_spolne_kosti')
					->mask('99')
					->title(__('!! In case of male sex! Length of os penis (penis bone - baculum)'))
					->help(__('Insert Length of os penis (penis bone - baculum) of the animal (0-20 cm)')),

				Input::make('dolzina_seskov')
					->mask('99')
					->title(__('!! In case of female sex! Nipple length'))
					->help(__('Insert Nipple length (0-15 cm)')),

				Select::make('teats_wear_list_id')
					->fromModel(TeatsWearList::class, 'name')
					->title(__('!! In case of female sex! Nipple use '))
					->required()
					->help(__('Select nipple use')),
			])->autoWidth(),
			// Sexual characteristics end

			// Tail length start
			Group::make([
				Input::make('dolzina_repa_prva_meritev')
					->mask('99')
					->title(__('Tail length without hair'))
					->help(__('Insert Tail length without hair (0-60 cm)')),

				Input::make('dolzina_repa_druga_meritev')
					->mask('99')
					->title(__('!! This is not obligatory! Length of hair at the end of tail'))
					->help(__('Insert Length of hair at the end of tail (0-60 cm)')),

			])->autoWidth(),
			// Tail length end

			// Ears start
			Group::make([
				Input::make('dolzina_usesov')
					->mask('99')
					->title(__('Ear length without hair'))
					->help(__('Insert Ear length without hair (0-20 cm)')),

				Input::make('dolzina_copkov')
					->mask('99')
					->title(__('!! This is not obligatory! Length of hair tuft (for lynx only)'))
					->help(__('Insert Length of hair tuft (for lynx only) (0-20 cm)')),

			])->autoWidth(),
			// Ears end

			// Front left paw start
			Group::make([
				Input::make('sps_leva')
					->mask('99')
					->title(__('Front left paw width'))
					->help(__('Insert Front left paw width (0-20 cm)')),

				Input::make('dps_leva')
					->mask('99')
					->title(__('Front left paw length'))
					->help(__('Insert Front left paw width (0-25 cm)')),

			])->autoWidth(),
			// Front left paw end

			// Front right paw start
			Group::make([
				Input::make('sps_desna')
					->mask('99')
					->title(__('Front right paw width'))
					->help(__('Insert Front right paw width (0-20 cm)')),

				Input::make('dps_desna')
					->mask('99')
					->title(__('Front right paw length'))
					->help(__('Insert Front right paw width (0-25 cm)')),

			])->autoWidth(),
			// Front right paw end

			// Hind left paw start
			Group::make([
				Input::make('szs_leva')
					->mask('99')
					->title(__('Hind left paw width'))
					->help(__('Insert Hind left paw width (0-20 cm)')),

				Input::make('dzs_leva')
					->mask('99')
					->title(__('Hind left paw length'))
					->help(__('Insert Hind left paw width (0-25 cm)')),

			])->autoWidth(),
			// Hind left paw end

			// Hind right paw start
			Group::make([
				Input::make('szs_desna')
					->mask('99')
					->title(__('Hind left paw width'))
					->help(__('Insert Hind left paw width (0-20 cm)')),

				Input::make('dzs_desna')
					->mask('99')
					->title(__('Hind left paw length'))
					->help(__('Insert Hind left paw width (0-25 cm)')),

			])->autoWidth(),
			// Hind right paw end

			// Length of left canines start
			Group::make([
				Input::make('dzp_leva')
					->mask('99')
					->title(__('Length of Upper left canines'))
					->help(__('Insert Length of Upper left canines (0-6 cm)')),

				Input::make('dsp_leva')
					->mask('99')
					->title(__('Length of Lower left canines'))
					->help(__('Insert Length of Lower left canines (0-5 cm)')),

			])->autoWidth(),
			// Length of left canines end

			// Length of right canines start
			Group::make([
				Input::make('dzp_desna')
					->mask('99')
					->title(__('Length of Upper right canines'))
					->help(__('Insert Length of Upper right canines (0-6 cm)')),

				Input::make('dsp_desna')
					->mask('99')
					->title(__('Length of Lower right canines'))
					->help(__('Insert Length of Lower right canines (0-5 cm)')),

			])->autoWidth(),
			// Length of right canines end

			// Number of premolars start
 			Group::make([
				Select::make('sp_zgoraj')
					->options($premolarsOptions)
					->title(__('Number of premolars in the Upper jaw (left + right)'))
					->required()
					->help(__('Please insert Number of premolars in the Upper jaw (left + right).')),

				Select::make('sp_spodaj')
					->options($premolarsOptions)
					->title(__('Number of premolars in the Lower jaw (left + right)'))
					->required()
					->help(__('Please insert Number of premolars in the Lower jaw (left + right).')),

			])->autoWidth(),
			// Number of premolars end

			// Other observations start
			Group::make([
				Select::make('incisors_wear_list_id')
					->fromModel(IncisorsWearList::class, 'name')
					->title(__('Incisors (front teeth) wear'))
					->required()
					->help(__('Please insert Incisors (front teeth) wear.')),

				Select::make('color_list_id')
					->fromModel(ColorList::class, 'name')
					->title(__('Color'))
					->required()
					->help(__('Please insert Color')),

				Select::make('collar_list_id')
					->fromModel(CollarList::class, 'name')
					->title(__('Light neck stripe "collar"'))
					->required()
					->help(__('Please insert Light neck stripe "collar"')),

			])->autoWidth(),
			// Other observations end

			// Physical condition, illness, injuries, other observations, notes
			TextArea::make('stanje_lesine')
				->title(__('Physical condition, illness, injuries, other observations, notes'))
				->required()
				->help(__('Please insert Physical condition, illness, injuries, other observations, notes ')),

			// Date and time of biometry measurements start
			Input::make('cas_biometrije')
				->type('datetime-local')
				->title(__('Date and time of biometry measurements')),

			// Date and time of biometry measurements end

			// images start
			// images end
		];
    }

    /**
     * Get the columns displayed by the resource.
     *
     * @return TD[]
     */
    public function columns(): array
    {
        return [
            TD::make('id'),

            TD::make('created_at', 'Date of creation')
                ->render(function ($model) {
                    return $model->created_at->toDateTimeString();
                }),

            TD::make('updated_at', 'Update date')
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
        return [];
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
}
