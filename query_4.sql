USE sakila;

-- 4A

SELECT last_name, COUNT(*) FROM actor GROUP BY last_name;

-- 4B
SELECT Count(*) FROM (SELECT DISTINCT last_name FROM actor); *DOES NOT WORK