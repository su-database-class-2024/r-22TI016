SELECT category.name AS country_name, COUNT(rental.rental_id) AS rental_count, SUM(payment.amount) AS uriage
FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
JOIN film_category ON film.film_id = film_category.film_id
JOIN category ON film_category.category_id = category.category_id
JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY category.name
ORDER BY rental_count;