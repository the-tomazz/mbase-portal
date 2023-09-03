DROP VIEW animal_handling_list_view;


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
	laravel.users.id as users_id,
	laravel.users.name as users_name,
	CASE WHEN laravel.bears_biometry_data.id is null THEN 'missing' ELSE 'exists' END as bears_biometry_data_status
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
    users.id = bears_biometry_animal_handling.data_entered_by_user_id;
