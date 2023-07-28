CREATE TABLE laravel.spatial_unit_filter_type_versions (
	id serial PRIMARY KEY,
	spatial_unit_filter_type_id INTEGER REFERENCES spatial_unit_filter_types (id) ON DELETE RESTRICT,
	title varchar(128),
	description varchar(128),
	valid_from TIMESTAMPTZ NOT NULL,
	valid_to TIMESTAMPTZ NOT NULL,
	created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
	updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

INSERT INTO
	laravel.spatial_unit_filter_type_versions (id, spatial_unit_filter_type_id, title, description, valid_from, valid_to)
VALUES
	(
		1,
		2,
		'Original setup',
		'',
		'01-01-1970',
		'07-31-2023'
	);

INSERT INTO
	laravel.spatial_unit_filter_type_versions (id, spatial_unit_filter_type_id, title, description, valid_from, valid_to)
VALUES
	(
		2,
		2,
		'Original setup',
		'',
		'01-01-1970',
		'08-10-2023'
	);

INSERT INTO
	laravel.spatial_unit_filter_type_versions (id, spatial_unit_filter_type_id, title, description, valid_from, valid_to)
VALUES
	(
		3,
		3,
		'Original setup',
		'',
		'01-01-1970',
		'08-10-2023'
	);

INSERT INTO
	laravel.spatial_unit_filter_type_versions (id, spatial_unit_filter_type_id, title, description, valid_from, valid_to)
VALUES
	(
		4,
		1,
		'Summer 2023',
		'',
		'08-01-2023',
		'12-31-2099'
	);

GRANT
SELECT
	ON TABLE laravel.spatial_unit_filter_type_versions TO gozdovi;

