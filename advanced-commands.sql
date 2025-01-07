-- show all commands
SHOW ALL;

-- Get Server Timezone
SHOW TIMEZONE;

-- Date & Time functions
SELECT NOW(), TIMEOFDAY(), CURRENT_TIME, CURRENT_DATE;

-- Extract function (year, month, quarter, day) -> There are many patterns, you have to google it
SELECT EXTRACT(MONTH FROM payment_date)
FROM payment;

-- Age function
SELECT AGE(payment_date)
FROM payment;

-- TO_CHAR function -> There are many patterns, you have to google it
SELECT TO_CHAR(payment_date, 'dd/MM/YYYY')
FROM payment;

SELECT DISTINCT TO_CHAR(payment_date, 'MONTH')
FROM payment;

SELECT TO_CHAR(payment_date, 'Day') AS week_day, COUNT(*)
FROM payment
WHERE TO_CHAR(payment_date, 'ID') = '1'
GROUP BY TO_CHAR(payment_date, 'Day');

-- Mathematical functions -> There are many, you have to google it
SELECT CONCAT(ROUND(rental_rate / replacement_cost, 2) * 100, '%') AS percent_cost
FROM film;

-- String functions and operators -> There are many, you have to google it
SELECT LENGTH(first_name)
FROM customer;

SELECT UPPER(first_name) || ' ' || UPPER(last_name) AS full_name
FROM customer;

SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com' AS custom_email
FROM customer;

-- SubQuery
SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) FROM film);

SELECT film_id, title
FROM film
WHERE film_id IN (SELECT i.film_id
                  FROM rental AS r
                           INNER JOIN inventory i ON i.inventory_id = r.inventory_id
                  WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY title;

SELECT first_name, last_name
FROM customer AS c
WHERE NOT EXISTS(SELECT * FROM payment AS p WHERE p.customer_id = c.customer_id AND amount > 11);

-- Self-Join
SELECT f1.title, f2.title, f1.length
FROM film AS f1
         INNER JOIN film AS f2 ON f1.film_id != f2.film_id AND f1.length = f2.length;






