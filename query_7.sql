USE sakila;

-- 7A
SELECT title, language_id FROM film WHERE title LIKE 'K%' OR title LIKE 'Q%' 
HAVING language_id = (SELECT language_id FROM language WHERE name = 'English');

-- 7B
SELECT first_name, last_name FROM actor WHERE actor_id IN 
(SELECT actor_id FROM film_actor WHERE film_id IN (SELECT film_id FROM film WHERE title = 'Alone Trip'));

-- 7C
SELECT first_name, last_name, email, country FROM customer 
INNER JOIN address USING (address_id)
INNER JOIN city USING (city_id)
INNER JOIN country USING (country_id)
WHERE country = 'Canada';

-- 7D
SELECT title from film WHERE film_id IN 
(SELECT film_id FROM film_category WHERE category_id IN 
(SELECT category_id FROM category WHERE name = 'Family'));

-- 7E
SELECT title, count(*) FROM film 
INNER JOIN inventory USING (film_id)
INNER JOIN rental USING (inventory_id)
GROUP BY title ORDER BY `count(*)` desc;

-- 7F