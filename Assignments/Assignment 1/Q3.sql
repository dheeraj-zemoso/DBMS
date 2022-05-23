select customer.customer_id, first_name, last_name, country.country, rental_id, rental.inventory_id, inventory.film_id, category.name
from customer, address, city, country, rental, inventory, film, film_category, category 
where customer.address_id = address.address_id and address.city_id = city.city_id and city.country_id = country.country_id
and rental.inventory_id = inventory.inventory_id and inventory.film_id = film.film_id and film.film_id = film_category.film_id and film_category.category_id = category.category_id
and rental.customer_id = customer.customer_id
and country = 'India'
and category.name = 'Sports';
