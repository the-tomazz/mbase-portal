CREATE TABLE laravel.biometry_loss_reason_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		233,
		'biometry_loss_reason',
		'Other',
		'{"en":"Other","sl":"Drugo","default":"Other"}',
		'{"hr":"","en":"trials with the asilum,...","de":"","it":"","sl":"poskus rešitve v azilu, ...","default":"suspecting poaching (but without the result of investigation), self-defence, trial with the asilum,..."}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		234,
		'biometry_loss_reason',
		'Road mortality',
		'{"en":"Road mortality","sl":"Povoz na cestah","default":"Road mortality"}',
		'{"hr":"","en":"all types of roads, except highways","de":"","it":"","sl":"vsi tipi cest razen avtocest","default":"all types of roads, except highways"}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		235,
		'biometry_loss_reason',
		'Railway mortality',
		'{"en":"Railway mortality","sl":"Povoz na železnicah","default":"Railway mortality"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		236,
		'biometry_loss_reason',
		'Poaching',
		'{"en":"Illegal killing","sl":"Usmrtitev brez dovoljenja","default":"Illegal killing"}',
		'{"hr":"","en":"illegal killing, self-defence, suspicion of poaching","de":"","it":"","sl":"nezakonita usmrtitev, samoobramba, sum na krivolov","default":""}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		3186,
		'biometry_loss_reason',
		'Natural causes',
		'{"en":"Natural causes","sl":"Naravni vzroki","default":"Natural causes"}',
		'{"hr":"","en":"drowning, disease, parasites, starvation, exhaustion, old age, fall over the cliff","de":"","it":"","sl":"utopitev, bolezen, zajedalci, podhranjenost, izčrpanost, visoka starost, padec čez pečino","default":"drowning, disease, parasites, starvation, exhaustion, old age, fall over the cliff"}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		3188,
		'biometry_loss_reason',
		'Intraspecific agression',
		'{"en":"Intraspecific agression","sl":"Znotrajvrstna agresija","default":"Intraspecific agression"}',
		'{"hr":"","en":"infanticide, teritorial exclusion, reproductive competition","de":"","it":"","sl":"infanticid, teritorialni spopadi, razmnoževalna tekmovalnost","default":""}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		3227,
		'biometry_loss_reason',
		'Not known',
		'{"en":"Not known","sl":"Neznano","default":"Not known"}',
		'{"hr":"","en":"e.g. skeletons or too decomposed corpses, non-identifiable cause of death","de":"","it":"","sl":"npr. okostja ali preveč razpadla trupla, nedoločljiv vzrok smrti","default":"e.g. skeletons or too decomposed corpses, non-identifiable cause of death"}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		3656,
		'biometry_loss_reason',
		'Highway mortality',
		'{"en":"Highway mortality","sl":"Povoz na avtocestah","default":"Highway mortality"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.biometry_loss_reason_list (id, title, value, name, description)
VALUES
	(
		3662,
		'biometry_loss_reason',
		'Death at capture',
		'{"en":"Death at capture","sl":"Smrt pri odlovu","default":"Death at capture"}',
		'{"hr":"","en":"Animal died after capturing or when handling","de":"","it":"","sl":"Smrt živali pri rokovanju, po odlovu, pri ujetju","default":"Animal died after capturing or when handling"}'
	);

CREATE TABLE laravel.collar_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.collar_list (id, title, value, name, description)
VALUES
	(
		217,
		'collar',
		'No',
		'{"en":"No","sl":"Ne","default":"No"}',
		'{"en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.collar_list (id, title, value, name, description)
VALUES
	(
		218,
		'collar',
		'Yes',
		'{"en":"Yes","sl":"Da","default":"Yes"}',
		'{"en":"","sl":"","default":""}'
	);

CREATE TABLE laravel.color_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.color_list (id, title, value, name, description)
VALUES
	(
		154,
		'color',
		'Light brown',
		'{"hr":"Svijetlo smeđa","en":"Light brown","de":"Hellbraun","sl":"Svetlo rjava","default":"Light brown"}',
		'{"hr":"","en":"","de":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.color_list (id, title, value, name, description)
VALUES
	(
		155,
		'color',
		'Brown',
		'{"en": "Brown","de": "Braun","sl": "Rjava","hr": "Smeđ","default": "Brown"}',
		'{"default":""}'
	);

INSERT INTO
	laravel.color_list (id, title, value, name, description)
VALUES
	(
		156,
		'color',
		'Dark brown',
		'{"hr":"Tamno smeđa","en":"Dark brown","de":"Dunkelbraun","sl":"Temno rjava","default":"Dark brown"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.color_list (id, title, value, name, description)
VALUES
	(
		157,
		'color',
		'Black',
		'{"en": "Black","de": "Schwarz","sl": "Črna","hr": "Crna","default": "Black"}',
		'{"default":""}'
	);

CREATE TABLE laravel.conflict_animal_removal_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.conflict_animal_removal_list (id, title, value, name, description)
VALUES
	(
		3657,
		'conflict_animal_removal',
		'Preserving protected species and habitats',
		'{"en":"Preserving protected species and habitats","sl":"Varstvo zavarovanih vrst in habitatov","default":"Preserving protected species and habitats"}',
		'{"hr":"","en":"Exception ˝a˝ of the Habitat´s Directive: cull due to the protection of animal and plant species; e.g. removal of hybrids","de":"","it":"","sl":"Izjema ˝a˝ Habitatne direktive: odstrel zaradi varstva živalskih in rastlinskih vrst; npr. odstrel križancev"}'
	);

INSERT INTO
	laravel.conflict_animal_removal_list (id, title, value, name, description)
VALUES
	(
		3658,
		'conflict_animal_removal',
		'Preventing serious damage',
		'{"en":"Preventing serious damage","sl":"Preprečevanje nastanka resne škode","default":"Preventing serious damage"}',
		'{"hr":"","en":"Exception ˝b˝ of the Habitat´s Directive: cull due to prevention of serious damage to human property; i.e. permits issued in a longer procedure","de":"","it":"","sl":"Izjema ˝b˝ Habitatne direktive: odstrel zaradi preprečevanja resne škode na premoženju; t.j. večina postopkov za izdajo dovoljenj po redni (daljši) poti","default":"Exception ˝b˝ of the Habitat´s Directive: cull due to prevention of serious damage to human property; i.e. permits issued in a longer procedure"}'
	);

INSERT INTO
	laravel.conflict_animal_removal_list (id, title, value, name, description)
VALUES
	(
		3659,
		'conflict_animal_removal',
		'Ensuring human health and safety',
		'{"en":"Ensuring human health and safety","sl":"Zagotavljanje zdravja in varnosti ljudi","default":"Ensuring human health and safety"}',
		'{"hr":"","en":"Exception ˝c˝ of the Habitat´s Directive: cull due to ensuring human health and safety; i.e. permits issued in a fast procedure as human safety is compromised (oral permissions)","de":"","it":"","sl":"Izjema ˝c˝ Habitatne direktive: odstrel zaradi zagotavljanja zdravja in varnosti ljudi; t.j. dovoljenja, izdana po hitrem postopku zaradi ogrožanja varnosti ljudi (ustne odločbe)","default":"Exception ˝c˝ of the Habitat´s Directive: cull due to ensuring human health and safety; i.e. permits issued in a fast procedure as human safety is compromised (oral permissions)"}'
	);

CREATE TABLE laravel.incisors_wear_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.incisors_wear_list (id, title, value, name, description)
VALUES
	(
		219,
		'incisors_wear',
		'Low',
		'{"en":"Low","sl":"Majhna","default":"Low"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.incisors_wear_list (id, title, value, name, description)
VALUES
	(
		220,
		'incisors_wear',
		'Medium',
		'{"en":"Medium","sl":"Srednja","default":"Medium"}',
		'{"hr":"","en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.incisors_wear_list (id, title, value, name, description)
VALUES
	(
		221,
		'incisors_wear',
		'Strong',
		'{"en":"Strong","sl":"Močna","default":"Strong"}',
		'{"en":"","sl":"","default":""}'
	);

CREATE TABLE laravel.fur_pattern_in_lynx_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.fur_pattern_in_lynx_list (id, title, value, name, description)
VALUES
	(
		1,
		'fur_pattern_in_lynx',
		'Spotted',
		'{"en":"Spotted","sl":"Pikast","default":"Spotted"}',
		'{"en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.fur_pattern_in_lynx_list (id, title, value, name, description)
VALUES
	(
		2,
		'fur_pattern_in_lynx',
		'Rosette',
		'{"en":"Rosette","sl":"Rozetast","default":"Rosette"}',
		'{"en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.fur_pattern_in_lynx_list (id, title, value, name, description)
VALUES
	(
		3,
		'fur_pattern_in_lynx',
		'No pattern',
		'{"en":"No pattern","sl":"Brez vzorca","default":"No pattern"}',
		'{"en":"","sl":"","default":""}'
	);

CREATE TABLE laravel.place_type_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		143,
		'place_type',
		'Feeding place',
		'{"en":"Feeding place","sl":"Krmišče","default":"Feeding place"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		144,
		'place_type',
		'Clearing',
		'{"en":"Clearing","sl":"Pasišče","default":"Clearing"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		145,
		'place_type',
		'Settlement',
		'{"en":"Settlement","sl":"Naselje","default":"Settlement"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		146,
		'place_type',
		'Road',
		'{"en":"Road","sl":"Cesta","default":"Road"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		147,
		'place_type',
		'Railway',
		'{"en":"Railway","sl":"Železnica","default":"Railway"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.place_type_list (id, title, value, name, description)
VALUES
	(
		148,
		'place_type',
		'Other',
		'{"en":"Other","sl":"Drugo","default":"Other"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

CREATE TABLE laravel.sex_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.sex_list (id, title, value, name, description)
VALUES
	(
		222,
		'sex',
		'Male',
		'{"en":"Male","sl":"Moški","default":"Male"}',
		'{"hr":"","en":"","de":"","it":"","sl":"Samec","default":""}'
	);

INSERT INTO
	laravel.sex_list (id, title, value, name, description)
VALUES
	(
		223,
		'sex',
		'Female',
		'{"en":"Female","sl":"Ženski","default":"Female"}',
		'{"hr":"","en":"","de":"","it":"","sl":"Samica","default":""}'
	);

INSERT INTO
	laravel.sex_list (id, title, value, name, description)
VALUES
	(
		3237,
		'sex',
		'Not known',
		'{"en":"Not known","sl":"Neznan","default":"Not known"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

CREATE TABLE laravel.species_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.species_list (id, title, value, name, description)
VALUES
	(
		12,
		'species',
		'Wolf',
		'{"hr":"Vuk","en":"Wolf","it":"Lupo","sl":"Volk","default":"Wolf"}',
		'{"hr":"Canis lupus","en":"Canis lupus","de":"Canis lupus","it":"Canis lupus","sl":"Canis lupus","default":"Canis lupus"}'
	);

INSERT INTO
	laravel.species_list (id, title, value, name, description)
VALUES
	(
		13,
		'species',
		'Brown bear',
		'{"hr":"Medvjed","en":"Brown bear","de":"Braunbär","it":"Orso bruno","sl":"Rjavi medved","default":"Brown bear"}',
		'{"hr":"Ursus arctos","en":"Ursus arctos","de":"Ursus arctos","it":"Ursus arctos","sl":"Ursus arctos","default":"Ursus arctos"}'
	);

INSERT INTO
	laravel.species_list (id, title, value, name, description)
VALUES
	(
		14,
		'species',
		'Eurasian lynx',
		'{"hr":"Ris","en":"Eurasian lynx","de":"Luchs","it":"Lince","sl":"Ris","default":"Eurasian lynx"}',
		'{"hr":"Lynx lynx","en":"Lynx lynx","de":"Lynx lynx","it":"Lynx lynx","sl":"Lynx lynx","default":"Lynx lynx"}'
	);

/*
INSERT INTO
	laravel.species_list (id, title, value, name, description)
VALUES
	(
		2134,
		'species',
		'Golden jackal',
		'{"en":"Golden jackal","sl":"Šakal","default":"Golden jackal"}',
		'{"hr":"","en":"Canis aureus","de":"","it":"","sl":"Canis aureus","default":"Canis aureus"}'
	);
*/

CREATE TABLE laravel.licence_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
	 	'22',
		'Faculty of Veterinary Medicine Zagreb_lynx licence',
		'',
		'{"en":"Faculty of Veterinary Medicine Zagreb_lynx licence","sl":"Licenca FVM Zagreb - Risi","sl":"Licenca Veterinarske fakultete Zagreb (ris)"}',
		'{"en":"This data belongs to the Faculty of Veterinary Medicine, University of Zagreb, Croatia and can not be used or reproduced in any case without written consent of Faculty of Veterinary Medicine, University of Zagreb. For its Terms of Use please contact Faculty of Veterinary Medicine, University of Zagreb Heinzelova 55, 10 0000 Zagreb, Croatia. Phone number +385 1 2390 156, e-mail: lifelynx.hr@gmail.com."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
	 	'19',
		'FVM Zagreb and UL BF Dept Biology Ljubljana licence',
		'',
		'{"en":"FVM Zagreb and UL BF Dept Biology Ljubljana licence","sl":"Licenca Veterinarske fakultete Zagreb in BF Oddelka za biologijo Ljubljana"}',
		'{"en":"This data belongs to Faculty of Veterinary Medicine, Zagreb, Croatia and to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia. Data can not be used or reproduced in any case without written consent of its owners. For its Terms of Use please contact: - (Tomaž Skrbinšek) Department of Biology, Biotechnical Faculty, University of Ljubljana, Večna pot 111, Sl-1000 Ljubljana. Phone number +386 1 320 3345, e-mail: raziskovanje.medvedov@gmail.com or - (Josip Kusak) Faculty of Veterinary Medicine, Heinzelova 55, 10 000 Zagreb, Croatia. Phone number +385 1 23 90 158, e-mail: josip.kusak@gmail.com."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
	 	'12',
		'PAT-Forest and Wildlife Service licence',
		'',
		'{"en":"PAT-Forest and Wildlife Service licence","sl":"Licenca Avtonomne province Trento, Službe za gozdove in prosto živeče živali"}',
		'{"en":"This data belongs to Provincia Autonoma di Trento - Forest and Wildlife Service, Italy, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact Provincia Autonoma di Trento, Forest and Wildlife Service, G.B. Trener 3, I-38123 Trento, Italy. Phone number +39 0461 49 59 43; e-mail: serv.foreste@pec.provincia.tn.it. "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
	 	'14',
		'Faculty of Veterinary Medicine Zagreb_bear licence',
		'',
		'{"en":"Faculty of Veterinary Medicine Zagreb_bear licence","sl":"Licenca Veterinarske fakultete Zagreb (medved)"}',
		'{"en":"This data belongs to Faculty of Veterinary Medicine, Zagreb, Croatia, and can not be used or reproduced in any case without written consent of Faculty of Veterinary Medicine. For its Terms of Use please contact Faculty of Veterinary Medicine, Heinzelova 55, 10 000 Zagreb, Croatia. Phone number +385 1 23 90 158, e-mail: slaven.reljic@gmail.com. "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'15',
		'FIWI Vienna licence',
		'',
		'{"en":"FIWI Vienna licence","sl":"Licenca Inštituta za ekologijo prosto živečih živali Dunaj"}',
		'{"en":"This data belongs to Research Institute of Wildlife Ecology (Department of Interdisciplinary Life Sciences), University of Veterinary Medicine Vienna, Austria, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact dr. Jörg Rauer or dr. Felix Knauer (Conservation medicine unit), Research Institute of Wildlife Ecology, University of Veterinary Medicine Vienna, Savoyenstraße 1, A-1160 Wien; e-mail: felix.knauer@vetmeduni.ac.at or Georg.Rauer@vetmeduni.ac.at"}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'16',
		'UL BF Dept Forestry Ljubljana_bear licence',
		'',
		'{"en":"UL BF Dept Forestry Ljubljana_bear licence","sl":"Licenca BF Oddelka za gozdarstvo Ljubljana (medved)"}',
		'{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of Forestry and Renewable resources, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of data owner. For its Terms of Use please contact Department of Forestry and Renewable resources, Večna pot 83, Sl-1000 Ljubljana. E-mail: klemen.jerina@bf.uni-lj.si."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'23',
		'UL BF Dept Biology Ljubljana_telem licence',
		'',
		'{"en":"UL BF Dept Biology Ljubljana_telem licence","sl":"Licenca BF Oddelka za biologijo Ljubljana (telemetrija)"}',
		'{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of its owner. For its Terms of Use please contact Department of Biology, Biotechnical Faculty (University of Ljubljana), Večna pot 111,  Sl-1000 Ljubljana. Phone number +386 1 320 3345, e-mail: hubert.potocnik@bf.uni-lj.si or hubert.potocnik@gmail.com (Hubert Potočnik). "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'11',
		'Slovenia Forest Service licence',
		'',
		'{"en":"Slovenia Forest Service licence","sl":"Licenca Zavoda za gozdove Slovenije"}',
		'{"en":"This data belongs to Slovenia Forest Service, Slovenia, and can not be used or reproduced in any case without written consent of Slovenia Forest Service. For its Terms of Use please contact Slovenia Forest Service, Večna pot 2, Sl-1000 Ljubljana. Phone number +386 1 470 00 50, +386 1 470 00 86, e-mail: dinalpbear@gmail.com, medvedidev@gmail.com.","sl":"Lastnik teh podatkov je Zavod za gozdove Slovenije. Brez pridobljenega pisnega dovoljenja je prepovedano kakorkoli uporabljati ali posredovati podatke. Za nadaljnje pogoje uporabe lahko kontaktirate Zavod za gozdove Slovenije, Večna pot 2, 1000 Ljubljana. Telefonski številki 01 470 00 50 ali 01 470 00 86, e-mail: dinalpbear@gmail.com, medvedidev@gmail.com."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'20',
		'SFS and UL BF Dept Biology Ljubljana licence',
		'',
		'{"en":"SFS and UL BF Dept Biology Ljubljana licence","sl":"Licenca ZGS in BF Oddelka za biologijo Ljubljana"}',
		'{"en":"This data belongs to Slovenia Forest Service, Slovenia, and to University of Ljubljana, Biotechnical Faculty, Department of Biology, Ljubljana, Slovenia. Data can not be used or reproduced in any case without written consent of data owners. For its Terms of Use please contact - (Matej Bartol) Slovenia Forest Service, Večna pot 2, Sl-1000 Ljubljana. Phone number +386 1 470 00 50, +386 1 470 00 82, e-mail: dinalpbear@gmail.com, medvedidev@gmail.com or - (Tomaž Skrbinšek) Department of Biology, Biotechnical Faculty (University of Ljubljana), Večna pot 111, Sl-1000 Ljubljana. Phone number +386 1 320 33 45, e-mail: raziskovanje.medvedov@gmail.com. "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'21',
		'UL BF Dept Forestry Ljubljana_lynx licence',
		'',
		'{"en":"UL BF Dept Forestry Ljubljana_lynx licence","sl":"Licenca BF Oddelka za biologijo Ljubljana (gen lab)"}',
		'{"en":"This data belongs to Department for Forestry, Biotechnical Faculty, University of Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent from data owner. For its Terms of Use please contact Dr. Miha Krofel, Dept. for forestry, Biotechnical Faculty, University of Ljubljana, Večna pot 83, Sl-1000 Ljubljana. Phone number + 386 1 3203 509, e-mail: miha.krofel@bf.uni-lj.si. "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'17',
		'UL BF Dept Biology Ljubljana_lab licence',
		'',
		'{"en":"UL BF Dept Biology Ljubljana_lab licence","sl":""}',
		'{"en":"This data belongs to University of Ljubljana, Biotechnical Faculty, Department of biology, Ljubljana, Slovenia, and can not be used or reproduced in any case without written consent of its owner. For its Terms of Use please contact Department of biology, Biotechnical Faculty (University of Ljubljana), Večna pot 111, Sl-1000 Ljubljana. Phone number +386 1 320 3345, e-mail: raziskovanje.medvedov@gmail.com. "}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'18',
		'Regione Veneto licence',
		'',
		'{"en":"Regione Veneto licence"}',
		'{"en":"This data belongs to Regione del Veneto, Italy, and can not be used or reproduced in any case without written consent of the data owner. For its Terms of Use please contact Regione del Veneto, Direzione Agroambiente, Caccia e Pesca, Via Torino 110, 30172 Mestre Venezia, Italy. E-mail: sonia.calderola@regione.veneto.it; tel. +39 041 2795436."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'13',
		'Progetto Lince Italia - CUFAA licence',
		'',
		'{"en":"Progetto Lince Italia - CUFAA licence"}',
		'{"en":"This data belongs to Progetto Lince Italia and CUFAA, Italy, and cannot be used or reproduced in any case without a written consent of Progetto Lince Italia. For the Terms of Use please contact Progetto Lince Italia, Via Roma 43, 33018 Tarvisio, e-mail: info@progettolinceitalia.it."}'
	);

INSERT INTO
	laravel.licence_list (id, title, value, name, description)
VALUES
	(
		'24',
		'ACDB licence',
		'',
		'{"en":"ACDB licence"}',
		'{"en":"This data belongs to ACDB, Romania, and cannot be used or reproduced in any case without written consent of ACDB. For its Terms of Use please contact ACDB, Ion Creanga 12, Focsani 620083, Romania. Phone number +40 720 217546, +40 737 493179, e-mail: teodora.sin.g@gmail.com, andreagazzola@yahoo.it."}'
	);

UPDATE laravel.licence_list SET name = (concat('{"en":"', title, '", "sl":"', title, '"}'))::jsonb;

CREATE TABLE laravel.sample_type_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		1,
		'sample_type',
		'Blood',
		'{"en":"Muscle","sl":"Mišičnina","default":"Muscle"}',
		'{"hr":"","en":"red muscles, tongue, diaphragm...","de":"","it":"","sl":"prečnoprogaste mišice, jezik, trebušna prepona...","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		2,
		'sample_type',
		'Claw',
		'{"en":"Claw","sl":"Krempelj","default":"Claw"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		3,
		'sample_type',
		'Tooth',
		'{"en":"Tooth","sl":"Zob","default":"Tooth"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		4,
		'sample_type',
		'Blood',
		'{"en":"Blood","sl":"Kri","default":"Blood"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		5,
		'sample_type',
		'Hair',
		'{"en":"Hair","sl":"Dlaka","default":"Hair"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		6,
		'sample_type',
		'Other tissue',
		'{"en":"Other tissue","sl":"Druga tkiva","default":"Other tissue"}',
		'{"hr":"","en":"bone, spleen, liver, lung...","de":"","it":"","sl":"kost, vranica, jetra, pljuča...","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		7,
		'sample_type',
		'Decomposing tissue',
		'{"en":"Decomposing tissue","sl":"Razpadajoče tkivo","default":"Decomposing tissue"}',
		'{"hr":"","en":"taken from teh decomposing carcass","de":"","it":"","sl":"Razpadajoče tkivo","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		8,
		'sample_type',
		'Saliva from the mucosa',
		'{"en":"Saliva from the mucosa","sl":"Slina s sluznice","default":"Saliva from the mucosa"}',
		'{"hr":"","en":"mucosa on the gums, mouth...","de":"","it":"","sl":"sluznica z dlesni, ust...","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		9,
		'sample_type',
		'Saliva from the object',
		'{"en":"Saliva from the object","sl":"Slina s predmeta","default":"Saliva from the object"}',
		'{"hr":"","en":"from prey remains, bite wounds on prey, bite marks from feeding items","de":"","it":"","sl":"slina z ugriznih ran na plenu, z ugriznih površin na hrani...","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		10,
		'sample_type',
		'Feces',
		'{"en":"Feces","sl":"Iztrebek","default":"Feces"}',
		'{"hr":"","en":"samples collected from scats","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.sample_type_list (id, title, value, name, description)
VALUES
	(
		11,
		'sample_type',
		'Urine',
		'{"en":"Urine","sl":"Urin","default":"Urine"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

CREATE TABLE laravel.teats_wear_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.teats_wear_list (id, title, value, name, description)
VALUES
	(
		1,
		'teats_wear',
		'Lactation',
		'{"en":"Lactation","sl":"Laktacija (mlečnost)","default":"Lactation"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.teats_wear_list (id, title, value, name, description)
VALUES
	(
		2,
		'teats_wear',
		'Low',
		'{"en":"Low","sl":"Majhna","default":"Low"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.teats_wear_list (id, title, value, name, description)
VALUES
	(
		3,
		'teats_wear',
		'Medium',
		'{"en":"Medium","sl":"Srednja","default":"Medium"}',
		'{"hr":"","en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.teats_wear_list (id, title, value, name, description)
VALUES
	(
		4,
		'teats_wear',
		'No usage',
		'{"en":"No usage","sl":"Močna","default":"Ni uporabe"}',
		'{"en":"","sl":"","default":""}'
	);



CREATE TABLE laravel.tooth_type_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		152,
		'tooth_type',
		'Upper P1',
		'{"en":"Upper P1","sl":"Zgornji P1","default":"Upper P1"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		153,
		'tooth_type',
		'Upper P2',
		'{"en":"Upper P2","sl":"Zgornji P2","default":"Upper P2"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		159,
		'tooth_type',
		'Upper P3',
		'{"en":"Upper P3","sl":"Zgornji P3","default":"Upper P3"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		160,
		'tooth_type',
		'Upper P4',
		'{"en":"Upper P4","sl":"Zgornji P4","default":"Upper P4"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		161,
		'tooth_type',
		'Lower P1',
		'{"en":"Lower P1","sl":"Spodnji P1","default":"Lower P1"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		162,
		'tooth_type',
		'Lower P2',
		'{"en":"Lower P2","sl":"Spodnji P2","default":"Lower P2"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		163,
		'tooth_type',
		'Lower P3',
		'{"en":"Lower P3","sl":"Spodnji P3","default":"Lower P3"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.tooth_type_list (id, title, value, name, description)
VALUES
	(
		164,
		'tooth_type',
		'Lower P4',
		'{"en":"Lower P4","sl":"Spodnji P4","default":"Lower P4"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

CREATE TABLE laravel.way_of_withdrawal_list (
	id serial PRIMARY KEY,
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	status varchar(16) default 'active',
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.way_of_withdrawal_list (id, title, value, name, description)
VALUES
	(
		133,
		'way_of_withdrawal',
		'Regular cull',
		'{"hr":"Odstrijeljen","en":"Regular cull","sl":"Redni odstrel","default":"Regular cull"}',
		'{"hr":"","en":"Exception ˝e of the Habitat`s Directive: selective, limited cull under strictly controlled conditions; i.e. planned cull based on a defined quota",
		"de":"","it":"",
		"sl":"Izjema ˝e˝ Habitatne direktive: skupinske odločbe; t.j. selektiven, omejen odvzem pod strogo nadzorovanimi pogoji","default":"Exception ˝e˝ of the Habitat´s Directive: selective, limited cull under strictly controlled conditions; i.e. planned cull based on a defined quota"}'
	);

INSERT INTO
	laravel.way_of_withdrawal_list (id, title, value, name, description)
VALUES
	(
		134,
		'way_of_withdrawal',
		'Conflict animal removal',
		'{"hr":"Interventni odstrel","en":"Conflict animal removal","sl":"Odstrel konfliktnega osebka","default":"Conflict animal removal"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.way_of_withdrawal_list (id, title, value, name, description)
VALUES
	(
		135,
		'way_of_withdrawal',
		'Loss',
		'{"en":"Loss","sl":"Izguba","default":"Loss"}',
		'{"hr":"","en":"","de":"","it":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.way_of_withdrawal_list (id, title, value, name, description)
VALUES
	(
		136,
		'way_of_withdrawal',
		'Live-capture (telemetry)',
		'{"en":"Live-capture (telemetry)","sl":"Ujetje živega osebka (telemetrija)","default":"Radio-telemetry"}',
		'{"hr":"","en":"Animal released back to the same population alive after radio-collaring","de":"","it":"","sl":"Žival po opremljanju s telemetrično ovratnico vrnjena živa v populacijo","default":"Animal released back to the same population alive after radio-collaring"}'
	);

INSERT INTO
	laravel.way_of_withdrawal_list (id, title, value, name, description)
VALUES
	(
		3661,
		'way_of_withdrawal',
		'Translocation out of population',
		'{"en":"Translocation out of population","sl":"Izselitev iz populacije","default":"Translocation out of population"}',
		'{"hr":"","en":"Translocation to another population, translocation into an enclosure (alive) - individual plays no role in the source population anymore","de":"","it":"","sl":"Preselitev v drugo populacijo, preselitev v oboro ali ujetništvo - osebek nima več funkcije v izvorni populaciji","default":"Translocation to another population, translocation into an enclosure (alive) - individual plays no role in the source population anymore"}'
	);

CREATE TABLE laravel.animal (
	id serial PRIMARY KEY,
	species_list_id INTEGER NOT NULL REFERENCES species_list (id) ON DELETE RESTRICT,
	sex_list_id INTEGER NOT NULL REFERENCES sex_list (id) ON DELETE RESTRICT,
	status varchar(16),
	title varchar(128),
	value text,
	name jsonb,
	description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	died_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE
	laravel.animal DROP COLUMN value;

ALTER TABLE
	laravel.biometry_loss_reason_list DROP COLUMN value;

ALTER TABLE
	laravel.collar_list DROP COLUMN value;

ALTER TABLE
	laravel.color_list DROP COLUMN value;

ALTER TABLE
	laravel.conflict_animal_removal_list DROP COLUMN value;

ALTER TABLE
	laravel.incisors_wear_list DROP COLUMN value;

ALTER TABLE
	laravel.place_type_list DROP COLUMN value;

ALTER TABLE
	laravel.sex_list DROP COLUMN value;

ALTER TABLE
	laravel.species_list DROP COLUMN value;

ALTER TABLE
	laravel.licence_list DROP COLUMN value;

ALTER TABLE
	laravel.sample_type_list DROP COLUMN value;

ALTER TABLE
	laravel.teats_wear_list DROP COLUMN value;

ALTER TABLE
	laravel.tooth_type_list DROP COLUMN value;

ALTER TABLE
	laravel.way_of_withdrawal_list DROP COLUMN value;

ALTER TABLE
	laravel.animal OWNER TO gozdovi;

ALTER TABLE
	laravel.biometry_loss_reason_list OWNER TO gozdovi;

ALTER TABLE
	laravel.collar_list OWNER TO gozdovi;

ALTER TABLE
	laravel.color_list OWNER TO gozdovi;

ALTER TABLE
	laravel.conflict_animal_removal_list OWNER TO gozdovi;

ALTER TABLE
	laravel.incisors_wear_list OWNER TO gozdovi;

ALTER TABLE
	laravel.place_type_list OWNER TO gozdovi;

ALTER TABLE
	laravel.sex_list OWNER TO gozdovi;

ALTER TABLE
	laravel.species_list OWNER TO gozdovi;

ALTER TABLE
	laravel.licence_list OWNER TO gozdovi;

ALTER TABLE
	laravel.sample_type_list OWNER TO gozdovi;

ALTER TABLE
	laravel.teats_wear_list OWNER TO gozdovi;

ALTER TABLE
	laravel.tooth_type_list OWNER TO gozdovi;

ALTER TABLE
	laravel.way_of_withdrawal_list OWNER TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.animal TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.biometry_loss_reason_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.collar_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.color_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.conflict_animal_removal_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.incisors_wear_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.place_type_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.sex_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.species_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.licence_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.sample_type_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.teats_wear_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.tooth_type_list TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.way_of_withdrawal_list TO gozdovi;
