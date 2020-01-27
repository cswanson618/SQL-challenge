USE sakila;

-- 1A
SELECT first_name, last_name FROM actor;

-- 1B
CREATE TABLE actor_names_concat SELECT concat(first_name, " ", last_name) FROM actor;
ALTER TABLE actor_names_concat CHANGE `concat(first_name, " ", last_name)` `Actor Name` varchar(50);
SELECT * from actor_names_concat;