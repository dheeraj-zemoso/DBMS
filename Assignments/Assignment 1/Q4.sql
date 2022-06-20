select distinct customer.customer_id, customer.first_name, customer.last_name, city.city, address.district, country.country
from customer, address, city, country, rental, inventory, film, film_actor, actor
where rental.inventory_id = inventory.inventory_id and inventory.film_id = film.film_id and film.film_id = film_actor.film_id and film_actor.actor_id = actor.actor_id
and actor.first_name = 'NICK' and actor.last_name = 'WAHLBERG'
and rental.customer_id = customer.customer_id
and customer.address_id = address.address_id and address.city_id = city.city_id and city.country_id = country.country_id
and country = 'Canada';
