SELECT country_id, COUNT(*) AS city_num
FROM city
GROUP BY country_id
HAVING COUNT(*) >= 20;
