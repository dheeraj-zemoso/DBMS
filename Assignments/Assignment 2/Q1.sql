select category.name as 'Category', count(*) as 'Films with Deleted Scenes'
from film, film_category, category 
where film.film_id = film_category.film_id and film_category.category_id = category.category_id
and category.name = 'Documentary'
and REGEXP_like (special_features, '^.*(Deleted Scenes).*$');
