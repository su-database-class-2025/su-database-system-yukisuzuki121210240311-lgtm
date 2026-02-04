SELECT cat.name AS category,
       COUNT(r.rental_id) AS rentals,
       SUM(p.amount) AS revenue
FROM category cat
JOIN film_category fc
  ON cat.category_id = fc.category_id
JOIN film f
  ON fc.film_id = f.film_id
JOIN inventory i
  ON f.film_id = i.film_id
JOIN rental r
  ON i.inventory_id = r.inventory_id
JOIN payment p
  ON r.rental_id = p.rental_id
GROUP BY cat.name
ORDER BY rentals DESC;
