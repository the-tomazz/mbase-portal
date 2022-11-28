
CREATE OR REPLACE VIEW animal_handling_list_view AS
  SELECT
    laravel.bears_biometry_animal_handling.*,
    laravel.animal.name as animal_name,
    laravel.animal.status as animal_status,
	laravel.animal.previous_status as animal_previous_status
  from
    laravel.bears_biometry_animal_handling
  join
    laravel.animal
  on
    laravel.bears_biometry_animal_handling.animal_id = laravel.animal.id;
