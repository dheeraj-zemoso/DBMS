select count(*) as 'Number'
from customer, rental, inventory, film
where rental.customer_id = customer.customer_id
and rental.inventory_id = inventory.inventory_id and inventory.film_id = film.film_id
and first_name = 'SUSAN' and last_name = 'WILSON'
and film.rating = 'R';
