select category.name, total_sales
from film, film_category, category, sales_by_film_category
where film.film_id = film_category.film_id and film_category.category_id = category.category_id
and category.name = 'Animation'
group by category.name;
