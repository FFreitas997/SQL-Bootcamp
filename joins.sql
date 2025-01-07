-- INNER JOIN
SELECT c.first_name, p.customer_id, COUNT(*)
FROM payment AS p
         INNER JOIN customer AS c ON c.customer_id = p.customer_id
GROUP BY c.first_name, p.customer_id
ORDER BY p.customer_id;

-- FULL OUTER JOIN
SELECT *
FROM customer AS c
         FULL JOIN payment AS p ON c.customer_id = p.customer_id
WHERE c.customer_id IS NULL
   OR p.payment_id IS NULL;

-- LEFT OUTER JOIN
SELECT f.film_id, f.title, i.inventory_id
FROM film AS f
         LEFT JOIN inventory i ON f.film_id = i.film_id
WHERE i.film_id IS NULL;

-- RIGHT OUTER JOIN
SELECT i.inventory_id, i.film_id, i.store_id
FROM inventory AS i
         RIGHT JOIN film f ON f.film_id = i.film_id;

-- UNION
SELECT first_name, last_name
FROM customer
UNION
SELECT title, description
FROM film;


SELECT c.email, a.district
FROM customer AS c
         INNER JOIN address a ON a.address_id = c.address_id
WHERE a.district = 'California';

SELECT a.first_name, a.last_name, f.title
FROM film_actor fa
         INNER JOIN film f ON f.film_id = fa.film_id
         INNER JOIN actor a ON a.actor_id = fa.actor_id
WHERE a.first_name = 'Nick'
  AND a.last_name = 'Wahlberg'
ORDER BY f.title;




