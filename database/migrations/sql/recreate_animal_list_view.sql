DROP VIEW animal_list_view;

CREATE OR REPLACE VIEW animal_list_view AS
  SELECT
    laravel.animal.id as id,
    laravel.animal.status as status,
    laravel.animal.name as name,
    laravel.animal.died_at as died_at,
    (
        SELECT
	      COUNT(*)
        FROM
          bears_biometry_animal_handling
        WHERE
          laravel.bears_biometry_animal_handling.animal_id = laravel.animal.id
    ) AS animal_handling_count,
    laravel.species_list.name AS species_list_name,
    laravel.sex_list.name AS sex_list_name,
    bears_biometry_animal_handling.id AS animal_handling_id,
    bears_biometry_animal_handling.animal_handling_date as animal_handling_date,
    way_of_withdrawal_list.name as way_of_withdrawal_list_name,
    bears_biometry_animal_handling.hunting_management_area as hunting_management_area,
    bears_biometry_animal_handling.number_of_removal_in_the_hunting_administrative_area as number_of_removal_in_the_hunting_administrative_area,
    bears_biometry_animal_handling.hunting_ground as hunting_ground,
    bears_biometry_animal_handling.data_entered_by_user_id as data_entered_by_user_id,
    bears_biometry_data.id AS bears_biometry_data_id,
    bears_biometry_data.age as age,
    bears_biometry_data.masa_bruto as masa_bruto,
	laravel.users.id as users_id,
	laravel.users.name as users_name,
	laravel.animal.created_at,
	laravel.animal.updated_at
  FROM
    laravel.animal
  LEFT JOIN
    laravel.species_list
  ON
    laravel.species_list.id = laravel.animal.species_list_id
  LEFT JOIN
    laravel.sex_list
  ON
    laravel.sex_list.id = laravel.animal.sex_list_id
  LEFT JOIN
    (
	  SELECT
        DISTINCT ON (animal_id) *
      FROM
        bears_biometry_animal_handling
      ORDER BY
        animal_id, animal_handling_date DESC
    ) bears_biometry_animal_handling
  ON
    animal.id = bears_biometry_animal_handling.animal_id
  LEFT JOIN
    way_of_withdrawal_list
  ON
    bears_biometry_animal_handling.way_of_withdrawal_list_id = way_of_withdrawal_list.id
  LEFT JOIN
    users
  ON
    users.id = bears_biometry_animal_handling.data_entered_by_user_id
  LEFT JOIN
    bears_biometry_data
  ON
    bears_biometry_data.bears_biometry_animal_handling_id = bears_biometry_animal_handling.id;
