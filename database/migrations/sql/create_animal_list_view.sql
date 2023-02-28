
CREATE OR REPLACE VIEW animal_list_view AS
  SELECT
    laravel.animal.*,
	laravel.species_list.name as species_list_name,
	laravel.sex_list.name as sex_list_name
  from
    laravel.animal
  left join
    laravel.species_list
  on
    laravel.species_list.id = laravel.animal.species_list_id
  left join
    laravel.sex_list
  on
    laravel.sex_list.id = laravel.animal.sex_list_id;
