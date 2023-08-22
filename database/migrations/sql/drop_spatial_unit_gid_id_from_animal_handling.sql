DROP VIEW animal_handling_list_view;

ALTER TABLE bears_biometry_animal_handling DROP column spatial_unit_gid;

CREATE OR REPLACE VIEW animal_handling_list_view AS
  SELECT
    laravel.bears_biometry_animal_handling.*,
    laravel.way_of_withdrawal_list.name as way_of_withdrawal_list_name,
    laravel.species_list.name as species_list_name,
    laravel.sex_list.name as sex_list_name,
    laravel.animal.name as animal_name,
    laravel.animal.species_list_id as species_list_id,
    laravel.animal.sex_list_id as sex_list_id,
    laravel.animal.status as animal_status,
    laravel.animal.died_at as animal_died_at,
    laravel.bears_biometry_data.id as bears_biometry_data_id,
    laravel.bears_biometry_data.age as bears_biometry_data_age,
    laravel.bears_biometry_data.masa_bruto as bears_biometry_data_masa_bruto,
    (
      SELECT
	    COUNT(*)
      FROM
        attachmentable
      WHERE
        laravel.attachmentable.attachmentable_type = 'App\Models\BearsBiometryAnimalHandling'
      AND
        laravel.attachmentable.attachmentable_id = laravel.bears_biometry_animal_handling.id
    ) AS attachment_count,
    CASE WHEN laravel.bears_biometry_data.id IS NULL THEN 'missing' ELSE 'exists' END AS bears_biometry_data_status,
	laravel.users.id as users_id,
	laravel.users.name as users_name
  FROM
    laravel.bears_biometry_animal_handling
  JOIN
    laravel.animal
  ON
    laravel.bears_biometry_animal_handling.animal_id = laravel.animal.id
  LEFT JOIN
    laravel.bears_biometry_data
  ON
    laravel.bears_biometry_animal_handling.id = laravel.bears_biometry_data.bears_biometry_animal_handling_id
  LEFT JOIN
    laravel.way_of_withdrawal_list
  ON
    laravel.way_of_withdrawal_list.id = laravel.bears_biometry_animal_handling.way_of_withdrawal_list_id
  LEFT JOIN
    laravel.species_list
  ON
    laravel.species_list.id = laravel.animal.species_list_id
  LEFT JOIN
    laravel.sex_list
  ON
    laravel.sex_list.id = laravel.animal.sex_list_id
  LEFT JOIN
    users
  ON
    users.id = bears_biometry_animal_handling.data_entered_by_user_id
  LEFT JOIN
    laravel.attachmentable
  ON
    laravel.attachmentable.attachmentable_type = 'App\Models\BearsBiometryAnimalHandling'
  AND
    laravel.attachmentable.attachmentable_id = laravel.bears_biometry_animal_handling.id
  GROUP BY
    laravel.bears_biometry_animal_handling.id,
    laravel.way_of_withdrawal_list.name,
    laravel.species_list.name,
    laravel.animal.name,
    laravel.sex_list.name,
    laravel.animal.name,
    laravel.animal.species_list_id,
    laravel.animal.sex_list_id,
    laravel.animal.status,
    laravel.animal.died_at,
    laravel.bears_biometry_data.id,
    laravel.bears_biometry_data.age,
    laravel.bears_biometry_data.masa_bruto,
    CASE WHEN laravel.bears_biometry_data.id is null THEN 'missing' ELSE 'exists' END,
	users.id,
	users.name;
