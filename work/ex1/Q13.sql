SELECT *
FROM store s
JOIN address a
  ON s.address_id = a.address_id;
