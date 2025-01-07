-- SELECT Statement
SELECT first_name, last_name
FROM actor;

-- DISTINCT Statement
SELECT DISTINCT(rental_rate)
FROM film;

-- COUNT Statement
SELECT COUNT(DISTINCT first_name)
FROM customer;

SELECT COUNT(*)
FROM customer;

-- WHERE Statement
SELECT first_name, last_name, email
FROM customer
WHERE first_name = 'David'
   OR last_name = 'Smith';

SELECT COUNT(*)
FROM film
WHERE rental_rate > 4
  AND replacement_cost >= 19.99
  AND rating = 'R';

-- ORDER BY Statement
SELECT store_id, first_name, last_name
FROM customer
ORDER BY store_id DESC, first_name DESC;

-- LIMIT Statement
SELECT *
FROM payment
ORDER BY payment_date DESC
LIMIT 10;

-- BETWEEN Statement (column1 >= x and column1 <= y)
SELECT *
FROM payment
WHERE payment_date NOT BETWEEN '2007-02-01' AND '2007-02-15';

-- IN Statement
SELECT COUNT(*)
FROM payment
WHERE amount NOT IN (0.99, 1.98, 1.99);

-- LIKE Statement
SELECT *
FROM customer
WHERE first_name LIKE 'J%'
  AND last_name LIKE 'S%';

SELECT *
FROM customer
WHERE first_name ILIKE 'j%'
  AND last_name ILIKE '%s';

SELECT *
FROM customer
WHERE first_name LIKE '%er%'
  AND last_name LIKE '%er%';

SELECT *
FROM customer
WHERE first_name NOT LIKE '_her%'
ORDER BY last_name;


-- Final Challenge
SELECT COUNT(*)
FROM payment
WHERE amount > 5.00;

SELECT COUNT(*)
FROM actor
WHERE first_name ILIKE 'p%';

SELECT COUNT(DISTINCT district)
FROM address;

SELECT COUNT(*)
FROM film
WHERE rating = 'R'
  AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*)
FROM film
WHERE title LIKE '%Truman%';


