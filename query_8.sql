USE sakila;

-- 8A
CREATE VIEW sakila.genre_revenue AS
	SELECT SUM(amount), name FROM payment
	INNER JOIN rental USING (rental_id)
	INNER JOIN inventory USING (inventory_id)
	INNER JOIN film_category USING (film_id)
	INNER JOIN category USING (category_id)
	GROUP BY name ORDER BY `SUM(amount)` desc
	LIMIT 5;
    
-- 8B
SELECT * FROM genre_revenue;

-- 8C
DROP VIEW genre_revenue;
