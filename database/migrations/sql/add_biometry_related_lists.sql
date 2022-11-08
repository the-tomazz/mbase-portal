create table laravel.animal
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);


create table laravel.bear_territory_type_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.bear_territory_type_list (id, title, value, name, description) VALUES (149, 'bear_territory_type', 'Core area', '{"en":"Core area","sl":"Osrednje","default":"Core area"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.bear_territory_type_list (id, title, value, name, description) VALUES (150, 'bear_territory_type', 'Border area', '{"en":"Border area","sl":"Robno","default":"Border area"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.bear_territory_type_list (id, title, value, name, description) VALUES (151, 'bear_territory_type', 'Corridor area', '{"en":"Corridor area","sl":"Koridorsko","default":"Corridor area"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.bear_territory_type_list (id, title, value, name, description) VALUES (175, 'bear_territory_type', 'Exceptional presence', '{"en":"Exceptional presence","sl":"Območje izjemne prisotnosti ","default":"Exceptional presence"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');


create table laravel.biometry_loss_reason_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (233, 'biometry_loss_reason', 'Other', '{"en":"Other","sl":"Drugo","default":"Other"}', '{"hr":"","en":"suspecting poaching (but without the result of investigation), self-defence, trial with the asilum,...","de":"","it":"","sl":"sum na krivolov (a nimamo rezultata preiskave), samoobramba, poskus rešitve v azilu,..","default":"suspecting poaching (but without the result of investigation), self-defence, trial with the asilum,..."}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (234, 'biometry_loss_reason', 'Road mortality', '{"en":"Road mortality","sl":"Povoz na cestah","default":"Road mortality"}', '{"hr":"","en":"all types of roads, except highways","de":"","it":"","sl":"vsi tipi cest razen avtocest","default":"all types of roads, except highways"}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (235, 'biometry_loss_reason', 'Railway mortality', '{"en":"Railway mortality","sl":"Povoz na železnicah","default":"Railway mortality"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (236, 'biometry_loss_reason', 'Poaching', '{"en":"Illegal killing","sl":"Nezakonita usmrtitev","default":"Illegal killing"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (3186, 'biometry_loss_reason', 'Natural causes', '{"en":"Natural causes","sl":"Naravni vzroki","default":"Natural causes"}', '{"hr":"","en":"drowning, disease, parasites, starvation, exhaustion, old age, fall over the cliff","de":"","it":"","sl":"utopitev, bolezen, zajedalci, podhranjenost, izčrpanost, visoka starost, padec čez pečino","default":"drowning, disease, parasites, starvation, exhaustion, old age, fall over the cliff"}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (3188, 'biometry_loss_reason', 'Intraspecific agression', '{"en":"Intraspecific agression","sl":"Znotrajvrstna agresija","default":"Intraspecific agression"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (3227, 'biometry_loss_reason', 'Not known', '{"en":"Not known","sl":"Neznano","default":"Not known"}', '{"hr":"","en":"e.g. skeletons or too decomposed corpses, non-identifiable cause of death","de":"","it":"","sl":"npr. okostja ali preveč razpadla trupla, nedoločljiv vzrok smrti","default":"e.g. skeletons or too decomposed corpses, non-identifiable cause of death"}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (3656, 'biometry_loss_reason', 'Highway mortality', '{"en":"Highway mortality","sl":"Povoz na avtocestah","default":"Highway mortality"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.biometry_loss_reason_list (id, title, value, name, description) VALUES (3662, 'biometry_loss_reason', 'Death at capture', '{"en":"Death at capture","sl":"Smrt pri odlovu","default":"Death at capture"}', '{"hr":"","en":"Animal died after capturing or when handling","de":"","it":"","sl":"Smrt živali pri rokovanju, po odlovu, pri ujetju","default":"Animal died after capturing or when handling"}');



create table laravel.collar_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);


INSERT INTO laravel.collar_list (id, title, value, name, description) VALUES (217, 'collar', 'No', '{"en":"No","sl":"Ne","default":"No"}', '{"en":"","sl":"","default":""}');
INSERT INTO laravel.collar_list (id, title, value, name, description) VALUES (218, 'collar', 'Yes', '{"en":"Yes","sl":"Da","default":"Yes"}', '{"en":"","sl":"","default":""}');


create table laravel.color_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.color_list (id, title, value, name, description) VALUES (154, 'color', 'Light brown', '{"hr":"Svijetlo smeđa","en":"Light brown","de":"Hellbraun","sl":"Svetlo rjava","default":"Light brown"}', '{"hr":"","en":"","de":"","sl":"","default":""}');
INSERT INTO laravel.color_list (id, title, value, name, description) VALUES (155, 'color', 'Brown', '{"en": "Brown","de": "Braun","sl": "Rjava","hr": "Smeđ","default": "Brown"}', '{"default":""}');
INSERT INTO laravel.color_list (id, title, value, name, description) VALUES (156, 'color', 'Dark brown', '{"hr":"Tamno smeđa","en":"Dark brown","de":"Dunkelbraun","sl":"Temno rjava","default":"Dark brown"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.color_list (id, title, value, name, description) VALUES (157, 'color', 'Black', '{"en": "Black","de": "Schwarz","sl": "Črna","hr": "Crna","default": "Black"}', '{"default":""}');


create table laravel.animal_removal_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.animal_removal_list (id, title, value, name, description) VALUES (3657, 'conflict_animal_removal', 'Preserving protected species and habitats', '{"en":"Preserving protected species and habitats","sl":"Varstvo zavarovanih vrst in habitatov","default":"Preserving protected species and habitats"}', '{"hr":"","en":"Exception ˝a˝ of the Habitat´s Directive: cull due to the protection of animal and plant species; e.g. removal of hybrids","de":"","it":"","sl":"Izjema ˝a˝ Habitatne direktive: odstrel zaradi varstva živalskih in rastlinskih vrst; npr. odstrel križancev","default":"Exception ˝a˝ of the Habitat´s Directive: cull due to the protection of animal and plant species; e.g. removal of hybrids"}');
INSERT INTO laravel.animal_removal_list (id, title, value, name, description) VALUES (3658, 'conflict_animal_removal', 'Preventing serious damage', '{"en":"Preventing serious damage","sl":"Preprečevanje nastanka resne škode","default":"Preventing serious damage"}', '{"hr":"","en":"Exception ˝b˝ of the Habitat´s Directive: cull due to prevention of serious damage to human property; i.e. permits issued in a longer procedure","de":"","it":"","sl":"Izjema ˝b˝ Habitatne direktive: odstrel zaradi preprečevanja resne škode na premoženju; t.j. večina postopkov za izdajo dovoljenj po redni (daljši) poti","default":"Exception ˝b˝ of the Habitat´s Directive: cull due to prevention of serious damage to human property; i.e. permits issued in a longer procedure"}');
INSERT INTO laravel.animal_removal_list (id, title, value, name, description) VALUES (3659, 'conflict_animal_removal', 'Ensuring human health and safety', '{"en":"Ensuring human health and safety","sl":"Zagotavljanje zdravja in varnosti ljudi","default":"Ensuring human health and safety"}', '{"hr":"","en":"Exception ˝c˝ of the Habitat´s Directive: cull due to ensuring human health and safety; i.e. permits issued in a fast procedure as human safety is compromised (oral permissions)","de":"","it":"","sl":"Izjema ˝c˝ Habitatne direktive: odstrel zaradi zagotavljanja zdravja in varnosti ljudi; t.j. dovoljenja, izdana po hitrem postopku zaradi ogrožanja varnosti ljudi (ustne odločbe)","default":"Exception ˝c˝ of the Habitat´s Directive: cull due to ensuring human health and safety; i.e. permits issued in a fast procedure as human safety is compromised (oral permissions)"}');


create table laravel.incisors_wear_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.incisors_wear_list (id, title, value, name, description) VALUES (219, 'incisors_wear', 'Low', '{"en":"Low","sl":"Majhna","default":"Low"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.incisors_wear_list (id, title, value, name, description) VALUES (220, 'incisors_wear', 'Medium', '{"en":"Medium","sl":"Srednja","default":"Medium"}', '{"hr":"","en":"","sl":"","default":""}');
INSERT INTO laravel.incisors_wear_list (id, title, value, name, description) VALUES (221, 'incisors_wear', 'Strong', '{"en":"Strong","sl":"Močna","default":"Strong"}', '{"en":"","sl":"","default":""}');


create table laravel.place_type_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (143, 'place_type', 'Feeding place', '{"en":"Feeding place","sl":"Krmišče","default":"Feeding place"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (144, 'place_type', 'Clearing', '{"en":"Clearing","sl":"Pasišče","default":"Clearing"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (145, 'place_type', 'Settlement', '{"en":"Settlement","sl":"Naselje","default":"Settlement"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (146, 'place_type', 'Road', '{"en":"Road","sl":"Cesta","default":"Road"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (147, 'place_type', 'Railway', '{"en":"Railway","sl":"Železnica","default":"Railway"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.place_type_list (id, title, value, name, description) VALUES (148, 'place_type', 'Other', '{"en":"Other","sl":"Drugo","default":"Other"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');


create table laravel.sex_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.sex_list (id, title, value, name, description) VALUES (222, 'sex', 'Male', '{"en":"Male","sl":"Moški","default":"Male"}', '{"hr":"","en":"","de":"","it":"","sl":"Samec","default":""}');
INSERT INTO laravel.sex_list (id, title, value, name, description) VALUES (223, 'sex', 'Female', '{"en":"Female","sl":"Ženski","default":"Female"}', '{"hr":"","en":"","de":"","it":"","sl":"Samica","default":""}');
INSERT INTO laravel.sex_list (id, title, value, name, description) VALUES (3237, 'sex', 'Not known', '{"en":"Not known","sl":"Neznan","default":"Not known"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');


create table laravel.species_list
(
    id          serial
    primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.species_list (id, title, value, name, description) VALUES (12, 'species', 'Wolf', '{"hr":"Vuk","en":"Wolf","it":"Lupo","sl":"Volk","default":"Wolf"}', '{"hr":"Canis lupus","en":"Canis lupus","de":"Canis lupus","it":"Canis lupus","sl":"Canis lupus","default":"Canis lupus"}');
INSERT INTO laravel.species_list (id, title, value, name, description) VALUES (13, 'species', 'Brown bear', '{"hr":"Medvjed","en":"Brown bear","de":"Braunbär","it":"Orso bruno","sl":"Rjavi medved","default":"Brown bear"}', '{"hr":"Ursus arctos","en":"Ursus arctos","de":"Ursus arctos","it":"Ursus arctos","sl":"Ursus arctos","default":"Ursus arctos"}');
INSERT INTO laravel.species_list (id, title, value, name, description) VALUES (14, 'species', 'Eurasian lynx', '{"hr":"Ris","en":"Eurasian lynx","de":"Luchs","it":"Lince","sl":"Ris","default":"Eurasian lynx"}', '{"hr":"Lynx lynx","en":"Lynx lynx","de":"Lynx lynx","it":"Lynx lynx","sl":"Lynx lynx","default":"Lynx lynx"}');
INSERT INTO laravel.species_list (id, title, value, name, description) VALUES (2134, 'species', 'Golden jackal', '{"en":"Golden jackal","sl":"Šakal","default":"Golden jackal"}', '{"hr":"","en":"Canis aureus","de":"","it":"","sl":"Canis aureus","default":"Canis aureus"}');


create table laravel.teats_wear_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.teats_wear_list (id, title, value, name, description) VALUES (140, 'teats_wear', 'Low', '{"en":"Low","sl":"Majhna","default":"Low"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.teats_wear_list (id, title, value, name, description) VALUES (141, 'teats_wear', 'Medium', '{"en":"Medium","sl":"Srednja","default":"Medium"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.teats_wear_list (id, title, value, name, description) VALUES (142, 'teats_wear', 'Strong', '{"en":"Strong","sl":"Močna","default":"Strong"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');


create table laravel.tooth_type_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (152, 'tooth_type', 'Upper P1', '{"en":"Upper P1","sl":"Zgornji P1","default":"Upper P1"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (153, 'tooth_type', 'Upper P2', '{"en":"Upper P2","sl":"Zgornji P2","default":"Upper P2"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (159, 'tooth_type', 'Upper P3', '{"en":"Upper P3","sl":"Zgornji P3","default":"Upper P3"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (160, 'tooth_type', 'Upper P4', '{"en":"Upper P4","sl":"Zgornji P4","default":"Upper P4"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (161, 'tooth_type', 'Lower P1', '{"en":"Lower P1","sl":"Spodnji P1","default":"Lower P1"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (162, 'tooth_type', 'Lower P2', '{"en":"Lower P2","sl":"Spodnji P2","default":"Lower P2"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (163, 'tooth_type', 'Lower P3', '{"en":"Lower P3","sl":"Spodnji P3","default":"Lower P3"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.tooth_type_list (id, title, value, name, description) VALUES (164, 'tooth_type', 'Lower P4', '{"en":"Lower P4","sl":"Spodnji P4","default":"Lower P4"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');


create table laravel.way_of_withdrawal_list
(
    id          serial primary key,
    title       varchar(128),
    value       text,
    name        jsonb,
    description jsonb,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    deleted_at TIMESTAMPTZ DEFAULT NULL
);

INSERT INTO laravel.way_of_withdrawal_list (id, title, value, name, description) VALUES (133, 'way_of_withdrawal', 'Regular cull', '{"hr":"Odstrijeljen","en":"Regular cull","sl":"Redni odstrel","default":"Regular cull"}', '{"hr":"","en":"Exception ˝e˝ of the Habitat Directive: selective, limited cull under strictly controlled conditions; i.e. planned cull based on a defined quota","de":"","it":"","sl":"Izjema ˝e˝ Habitatne direktive: skupinske odločbe; t.j. selektiven, omejen odvzem pod strogo nadzorovanimi pogoji","default":"Exception ˝e˝ of the Habitat´s Directive: selective, limited cull under strictly controlled conditions; i.e. planned cull based on a defined quota"}');
INSERT INTO laravel.way_of_withdrawal_list (id, title, value, name, description) VALUES (134, 'way_of_withdrawal', 'Conflict animal removal', '{"hr":"Interventni odstrel","en":"Conflict animal removal","sl":"Odstrel konfliktnega osebka","default":"Conflict animal removal"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.way_of_withdrawal_list (id, title, value, name, description) VALUES (135, 'way_of_withdrawal', 'Loss', '{"en":"Loss","sl":"Izguba","default":"Loss"}', '{"hr":"","en":"","de":"","it":"","sl":"","default":""}');
INSERT INTO laravel.way_of_withdrawal_list (id, title, value, name, description) VALUES (136, 'way_of_withdrawal', 'Live-capture', '{"en":"Radio-telemetry","sl":"Radio-telemetrija","default":"Radio-telemetry"}', '{"hr":"","en":"Animal released back to the same population alive after radio-collaring","de":"","it":"","sl":"Žival po opremljanju s telemetrično ovratnico vrnjena živa v populacijo","default":"Animal released back to the same population alive after radio-collaring"}');
INSERT INTO laravel.way_of_withdrawal_list (id, title, value, name, description) VALUES (3661, 'way_of_withdrawal', 'Translocation out of population', '{"en":"Translocation out of population","sl":"Izselitev iz populacije","default":"Translocation out of population"}', '{"hr":"","en":"Translocation to another population, translocation into an enclosure (alive) - individual plays no role in the source population anymore","de":"","it":"","sl":"Preselitev v drugo populacijo, preselitev v oboro ali ujetništvo - osebek nima več funkcije v izvorni populaciji","default":"Translocation to another population, translocation into an enclosure (alive) - individual plays no role in the source population anymore"}');

ALTER TABLE laravel.animal DROP COLUMN title;
ALTER TABLE laravel.bear_territory_type_list DROP COLUMN title;
ALTER TABLE laravel.biometry_loss_reason_list DROP COLUMN title;
ALTER TABLE laravel.collar_list DROP COLUMN title;
ALTER TABLE laravel.color_list DROP COLUMN title;
ALTER TABLE laravel.animal_removal_list DROP COLUMN title;
ALTER TABLE laravel.incisors_wear_list DROP COLUMN title;
ALTER TABLE laravel.place_type_list DROP COLUMN title;
ALTER TABLE laravel.sex_list DROP COLUMN title;
ALTER TABLE laravel.species_list DROP COLUMN title;
ALTER TABLE laravel.teats_wear_list DROP COLUMN title;
ALTER TABLE laravel.tooth_type_list DROP COLUMN title;
ALTER TABLE laravel.way_of_withdrawal_list DROP COLUMN title;

ALTER TABLE laravel.animal OWNER TO gozdovi;
ALTER TABLE laravel.bear_territory_type_list OWNER TO gozdovi;
ALTER TABLE laravel.biometry_loss_reason_list OWNER TO gozdovi;
ALTER TABLE laravel.collar_list OWNER TO gozdovi;
ALTER TABLE laravel.color_list OWNER TO gozdovi;
ALTER TABLE laravel.animal_removal_list OWNER TO gozdovi;
ALTER TABLE laravel.incisors_wear_list OWNER TO gozdovi;
ALTER TABLE laravel.place_type_list OWNER TO gozdovi;
ALTER TABLE laravel.sex_list OWNER TO gozdovi;
ALTER TABLE laravel.species_list OWNER TO gozdovi;
ALTER TABLE laravel.teats_wear_list OWNER TO gozdovi;
ALTER TABLE laravel.tooth_type_list OWNER TO gozdovi;
ALTER TABLE laravel.way_of_withdrawal_list OWNER TO gozdovi;

GRANT SELECT ON TABLE laravel.animal TO gozdovi;
GRANT SELECT ON TABLE laravel.bear_territory_type_list TO gozdovi;
GRANT SELECT ON TABLE laravel.biometry_loss_reason_list TO gozdovi;
GRANT SELECT ON TABLE laravel.collar_list TO gozdovi;
GRANT SELECT ON TABLE laravel.color_list TO gozdovi;
GRANT SELECT ON TABLE laravel.animal_removal_list TO gozdovi;
GRANT SELECT ON TABLE laravel.incisors_wear_list TO gozdovi;
GRANT SELECT ON TABLE laravel.place_type_list TO gozdovi;
GRANT SELECT ON TABLE laravel.sex_list TO gozdovi;
GRANT SELECT ON TABLE laravel.species_list TO gozdovi;
GRANT SELECT ON TABLE laravel.teats_wear_list TO gozdovi;
GRANT SELECT ON TABLE laravel.tooth_type_list TO gozdovi;
GRANT SELECT ON TABLE laravel.way_of_withdrawal_list TO gozdovi;
