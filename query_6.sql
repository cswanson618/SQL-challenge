USE sakila;

--  6A
SELECT address_id, first_name, last_name, address FROM staff INNER JOIN address USING (address_id);

-- 6B
SELECT first_name, last_name, staff_id, SUM(amount) FROM payment JOIN staff USING (staff_id) 
WHERE payment_date BETWEEN '2005-08-01' AND '2005-08-31' GROUP BY staff_id;

-- 6C
SELECT COUNT(actor_id) AS '# of Actors', film_id, title FROM actor INNER JOIN film_actor USING (actor_id) INNER JOIN film USING (film_id) 
GROUP BY film_id;

-- 6D 
SELECT COUNT(inventory_id), title FROM inventory INNER JOIN film USING (film_id) GROUP BY film_id HAVING title = 'Hunchback Impossible';

-- 6E
SELECT first_name, last_name, SUM(amount) AS 'Total Spent' from customer INNER JOIN payment USING (customer_id) GROUP BY customer_id 
ORDER BY last_name asc ;

