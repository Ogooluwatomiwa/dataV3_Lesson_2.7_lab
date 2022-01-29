USE Sakila;

SELECT c.category_id, COUNT(f.film_id) AS film_counts
FROM sakila.film f
JOIN sakila.film_category c
ON f.film_id = c.film_id 
GROUP BY category_id;

SELECT SUM(amount), staff_id FROM sakila.payment
WHERE payment_date BETWEEN '2005-08-01 00:00:00' AND '2005-08-31 23:59:59'
GROUP BY staff_id;

SELECT COUNT(film_id) as appearance, actor_id from sakila.film_actor
GROUP BY actor_id
ORDER BY appearance DESC
LIMIT 1;

SELECT COUNT(rental_id) as rented, customer_id from sakila.rental
GROUP BY customer_id
ORDER BY rented DESC
LIMIT 1;

SELECT s.first_name, s.last_name, s.address_id, a.address
from sakila.staff s
INNER JOIN sakila.address a
ON s.address_id = a.address_id
GROUP BY address_id;

SELECT COUNT(fa.actor_id) AS listed_actors, f.film_id 
FROM sakila.film_actor fa
JOIN sakila.film f
ON f.film_id = fa.film_id
GROUP BY film_id;

SELECT p.customer_id,SUM(p.amount) AS total_paid, c.first_name, c.last_name
FROM sakila.payment p
INNER JOIN sakila.customer c
ON p.customer_id = c.customer_id
GROUP BY customer_id
ORDER BY last_name ASC; 

SELECT film.film_id as film_film_list, inventory.film_id as inventory_film_list, film_actor.film_id as film_actor_film_list, film_category.film_id as film_category_film_lists 
FROM sakila.film
INNER JOIN sakila.inventory
INNER JOIN sakila.film_actor
INNER JOIN sakila.film_category;

