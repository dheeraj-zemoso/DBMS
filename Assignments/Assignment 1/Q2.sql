select title, count(*) as 'count'
from rental, inventory, film, film_category, category
where rental.inventory_id = inventory.inventory_id and inventory.film_id = film.film_id and film.film_id = film_category.film_id and film_category.category_id = category.category_id
and category.name = 'Horror'
group by film.film_id
order by count desc
limit 3;
