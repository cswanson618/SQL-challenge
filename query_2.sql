use sakila;

-- 2A
SELECT actor_id, first_name, last_name FROM actor WHERE first_name = 'Joe';

-- 2B
SELECT first_name, last_name FROM actor WHERE last_name LIKE '%gen%';

-- 2C
SELECT last_name, first_name FROM actor WHERE last_name LIKE '%li%';

SELECT country_id, country from country WHERE country IN ('Afghanistan', 'Bangladesh', 'China');