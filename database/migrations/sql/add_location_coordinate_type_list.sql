CREATE TABLE laravel.location_coordinate_type_list (
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
	laravel.location_coordinate_type_list (id, title, value, name, description)
VALUES
	(
		1,
		'location_coordinate_type',
		'Precise',
		'{"en":"Precise","sl":"Točna","default":"Precise"}',
		'{"en":"","sl":"","default":""}'
	);

INSERT INTO
	laravel.location_coordinate_type_list (id, title, value, name, description)
VALUES
	(
		2,
		'location_coordinate_type',
		'Centroid of hunting ground',
		'{"en":"Centroid of hunting ground","sl":"Centroid lovišča","default":"Centroid of hunting ground"}',
		'{"en":"","sl":"","default":""}'
	);

ALTER TABLE
	laravel.location_coordinate_type_list DROP COLUMN value;

ALTER TABLE
	laravel.location_coordinate_type_list OWNER TO gozdovi;

GRANT
SELECT
	ON TABLE laravel.location_coordinate_type_list TO gozdovi;

ALTER TABLE
	bears_biometry_animal_handling ADD COLUMN location_coordinate_type_list_id INT
	CONSTRAINT bears_biometry_animal_handling_location_coordinate_type_list_fk_id REFERENCES location_coordinate_type_list (ID)
	ON UPDATE CASCADE ON DELETE RESTRICT;
