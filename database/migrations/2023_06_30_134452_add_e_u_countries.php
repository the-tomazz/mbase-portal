<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		DB::table('groups')->insert([
			// COUNTRIES
			[ 'slug' => 'be', 'name' => '{"en": "Belgium", "sl": "Belgija", "hr": "Belgija", "it": "Belgio", "de": "Belgien", "ro": "Belgia", "sk": "Belgicko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'bg', 'name' => '{"en": "Bulgaria", "sl": "Bolgarija", "hr": "Bugarska", "it": "Bulgaria", "de": "Bulgarien", "ro": "Bulgaria", "sk": "Bulharsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'cy', 'name' => '{"en": "Republic of Cyprus", "sl": "Ciper Republika", "hr": "Republika Cipar", "it": "Repubblica di Cipro", "de": "Republik Zypern", "ro": "Republica Cipru", "sk": "Cyperská republika"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'cz', 'name' => '{"en": "Czech Republic", "sl": "Češka", "hr": "Češka Republika", "it": "Repubblica Ceca", "de": "Tschechien", "ro": "Republica Cehă", "sk": "Česká republika"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'dk', 'name' => '{"en": "Denmark", "sl": "Danska", "hr": "Danska", "it": "Danimarca", "de": "Dänemark", "ro": "Danemarca", "sk": "Dánsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'ee', 'name' => '{"en": "Estonia", "sl": "Estonija", "hr": "Estonija", "it": "Estonia", "de": "Estland", "ro": "Estonia", "sk": "Estónsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'fi', 'name' => '{"en": "Finland", "sl": "Finska", "hr": "Finska", "it": "Finlandia", "de": "Finnland", "ro": "Finlanda", "sk": "Fínsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'fr', 'name' => '{"en": "France", "sl": "Francija", "hr": "Francuska", "it": "Francia", "de": "Frankreich", "ro": "Franţa", "sk": "Francúzsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'de', 'name' => '{"en": "Germany", "sl": "Nemčija", "hr": "Njemačka", "it": "Germania", "de": "Deutschland", "ro": "Germania", "sk": "Nemecko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'gr', 'name' => '{"en": "Greece", "sl": "Grčija", "hr": "Grčka", "it": "Grecia", "de": "Griechenland", "ro": "Grecia", "sk": "Grécko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'hu', 'name' => '{"en": "Hungary", "sl": "Madžarska", "hr": "Mađarska", "it": "Ungheria", "de": "Ungarn", "ro": "Ungaria", "sk": "Maďarsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'lv', 'name' => '{"en": "Latvia", "sl": "Latvija", "hr": "Latvija", "it": "Lettonia", "de": "Lettland", "ro": "Letonia", "sk": "Lotyšsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'lt', 'name' => '{"en": "Lithuania", "sl": "Litva", "hr": "Litva", "it": "Lituania", "de": "Litauen", "ro": "Lituania", "sk": "Litva"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'lx', 'name' => '{"en": "Luxembourg", "sl": "Luksemburg", "hr": "Luksemburg", "it": "Lussemburgo", "de": "Luxemburg", "ro": "Luxemburg", "sk": "Luxembursko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'mt', 'name' => '{"en": "Malta", "sl": "Malta", "hr": "Malta", "it": "Malta", "de": "Malta", "ro": "Malta", "sk": "Malta"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'nl', 'name' => '{"en": "Netherlands", "sl": "Nizozemska", "hr": "Nizozemska", "it": "Olanda", "de": "Niederlande", "ro": "Olanda", "sk": "Holandsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'pl', 'name' => '{"en": "Poland", "sl": "Poljska", "hr": "Poljska", "it": "Polonia", "de": "Polen", "ro": "Polonia", "sk": "Poľsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'pt', 'name' => '{"en": "Portugal", "sl": "Portugalska", "hr": "Portugal", "it": "Portogallo", "de": "Portugal", "ro": "Portugalia", "sk": "Portugalsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'es', 'name' => '{"en": "Spain", "sl": "Španija", "hr": "Španjolska", "it": "Spagna", "de": "Spanien", "ro": "Spania", "sk": "Španielsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
			[ 'slug' => 'se', 'name' => '{"en": "Sweden", "sl": "Švedska", "hr": "Švedska", "it": "Svezia", "de": "Schweden", "ro": "Suedia", "sk": "Švédsko"}', 'group_type_id' => 1, 'created_at' => now(), 'updated_at' => now() ],
		]);
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		//
	}
};
