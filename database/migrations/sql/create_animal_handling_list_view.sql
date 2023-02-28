
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
	CASE WHEN laravel.bears_biometry_data.id is null THEN 'missing' ELSE 'exists' END as bears_biometry_data_status
  from
    laravel.bears_biometry_animal_handling
  join
    laravel.animal
  on
    laravel.bears_biometry_animal_handling.animal_id = laravel.animal.id
  left join
    laravel.bears_biometry_data
  on
    laravel.bears_biometry_animal_handling.id = laravel.bears_biometry_data.bears_biometry_animal_handling_id
  left join
    laravel.way_of_withdrawal_list
  on
    laravel.way_of_withdrawal_list.id = laravel.bears_biometry_animal_handling.way_of_withdrawal_list_id
  left join
    laravel.species_list
  on
    laravel.species_list.id = laravel.animal.species_list_id
  left join
    laravel.sex_list
  on
    laravel.sex_list.id = laravel.animal.sex_list_id;
