CREATE TABLE laravel.bears_biometry_animal_handling (
	id serial primary key,
	species_list_id INTEGER REFERENCES species_list (id),
	animar_removal_list_id INTEGER REFERENCES animal_removal_list (id),
	permit_number character varying(255),
	project_name character varying(255),
	telementry_uid character varying(255),
	biometry_loss_reason_list_id INTEGER REFERENCES biometry_loss_reason_list (id),
	biometry_loss_reason_description text,
	animal_handling_date TIMESTAMPTZ NOT NULL,
	place_of_removal text,
	place_type_list_id INTEGER REFERENCES place_type_list (id),
	place_type_list_details text,
	bear_territory_type_list_id INTEGER REFERENCES bear_territory_type_list (id),
	lat double precision,
	lng double precision,
	zoom integer,
	x double precision,
	y double precision,
	hunting_management_area character varying(255),
	hunting_management_area_id INTEGER REFERENCES spatial_unit_filter_elements (id),
	hunter_finder_name character varying(255),
	hunter_finder_surname character varying(255),
	hunter_finder_address character varying(255), # suggested removing
	hunter_finder_country_id INTEGER REFERENCES groups (id), # suggested removing
	witness_accompanying_person_name character varying(255),
	witness_accompanying_person_surname character varying(255),
	sample_taken integer,
	hair_sample_taken integer,
	blood_sample_taken integer,
	tooth_type_list_id INTEGER REFERENCES tooth_type_list (id),
	taxidermist_name character varying(255),
	taxidermist_surname character varying(255),
	data_endered_by_user_id INTEGER REFERENCES users (id),
	data_input_timestamp bigint NOT NULL,
	animal_id INTEGER REFERENCES animal (id),
	hunting_area character varying(255),
	gcell public.geometry(Polygon,4326),
	animal_removal_list_id INTEGER REFERENCES animal_removal_list (id),
	number_of_removal_in_the_hunting_administration_area text,
	geom public.geometry(Geometry,4326),
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	deleted_at TIMESTAMPTZ DEFAULT NULL
);

ALTER TABLE laravel.bears_biometry_animal_handling OWNER TO gozdovi;

GRANT SELECT ON TABLE laravel.bears_biometry_animal_handling TO gozdovi;
