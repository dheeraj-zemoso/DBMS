select count(*) as 'Number' from 
(
select film.film_id
from film, film_category, category, inventory, store, staff
where film.film_id = film_category.film_id and film_category.category_id = category.category_id
and film.film_id = inventory.film_id
and inventory.store_id = store.store_id
and store.manager_staff_id = staff.staff_id
and staff.first_name = 'Jon' and staff.last_name = 'Stephens'
and category.name = 'Sci-Fi'
group by film.film_id
) as table1;
