select category.name, count(category.name) as 'count'
from customer, rental, inventory, film, film_category, category 
where rental.customer_id = customer.customer_id
and rental.inventory_id = inventory.inventory_id and inventory.film_id = film.film_id and film.film_id = film_category.film_id and film_category.category_id = category.category_id
and first_name = 'PATRICIA' and last_name = 'JOHNSON'
group by category.name
order by count desc
limit 3;
