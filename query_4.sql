USE sakila;

-- 4A

SELECT last_name, COUNT(*) FROM actor GROUP BY last_name;

-- 4B

SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING `COUNT(*)` > 1;