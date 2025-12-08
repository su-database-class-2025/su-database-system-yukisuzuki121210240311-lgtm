SELECT *
FROM film
WHERE rating IN ('PG', 'G')
ORDER BY film_id
LIMIT 5;
