SELECT co.country,
       COUNT(DISTINCT cu.customer_id) AS customers,
       SUM(p.amount) AS total_sales
FROM country co
JOIN city ci
  ON co.country_id = ci.country_id
JOIN address a
  ON ci.city_id = a.city_id
JOIN customer cu
  ON a.address_id = cu.address_id
JOIN payment p
  ON cu.customer_id = p.customer_id
GROUP BY co.country
ORDER BY total_sales DESC;
