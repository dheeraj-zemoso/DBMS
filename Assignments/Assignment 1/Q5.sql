select first_name, last_name, count(film.film_id) as 'Number'
from film, film_actor, actor
where film.film_id = film_actor.film_id and film_actor.actor_id = actor.actor_id
and first_name = 'SEAN' and last_name = 'WILLIAMS';
