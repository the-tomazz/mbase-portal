DROP VIEW IF EXISTS animal_handling_list_view;
DROP VIEW IF EXISTS animal_list_view;

alter table bears_biometry_animal_handling drop column number_of_removal_in_the_hunting_administration_area;

CREATE OR REPLACE VIEW animal_handling_list_view AS
  SELECT
    laravel.bears_biometry_animal_handling.*,
    laravel.way_of_withdrawal_list.name as way_of_withdrawal_list_name,
    laravel.conflict_animal_removal_list.name as conflict_animal_removal_list_name,
	laravel.biometry_loss_reason_list.name as biometry_loss_reason_list_name,
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
    laravel.conflict_animal_removal_list
  ON
    laravel.conflict_animal_removal_list.id = laravel.bears_biometry_animal_handling.conflict_animal_removal_list_id
  LEFT JOIN
    laravel.biometry_loss_reason_list
  ON
    laravel.biometry_loss_reason_list.id = laravel.bears_biometry_animal_handling.biometry_loss_reason_list_id
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
    laravel.conflict_animal_removal_list.name,
	laravel.biometry_loss_reason_list.name,
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
	conflict_animal_removal_list.name as conflict_animal_removal_list_name,
	biometry_loss_reason_list.name as biometry_loss_reason_list_name,
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
    conflict_animal_removal_list
  ON
    bears_biometry_animal_handling.conflict_animal_removal_list_id = conflict_animal_removal_list.id
  LEFT JOIN
    biometry_loss_reason_list
  ON
    bears_biometry_animal_handling.biometry_loss_reason_list_id = biometry_loss_reason_list.id
  LEFT JOIN
    users
  ON
    users.id = bears_biometry_animal_handling.data_entered_by_user_id
  LEFT JOIN
    bears_biometry_data
  ON
    bears_biometry_data.bears_biometry_animal_handling_id = bears_biometry_animal_handling.id;

update spatial_unit_filter_elements set "name" = jsonb_set("name"::jsonb, '{name}', (upper(((name::jsonb)->'name')::VARCHAR))::jsonb) where spatial_unit_filter_type_version_id in (1, 4) ;
