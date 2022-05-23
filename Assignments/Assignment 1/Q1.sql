select title, rating, category.name
from film, film_category, category 
where film.film_id = film_category.film_id and film_category.category_id = category.category_id
and rating = 'PG-13'
and category.name = 'Comedy';
