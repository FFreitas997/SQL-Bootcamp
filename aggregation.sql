-- Most common aggregate functions: AVG COUNT MAX MIN SUM
SELECT MAX(replacement_cost), MIN(replacement_cost), COUNT(*)
FROM film;

SELECT ROUND(AVG(replacement_cost), 2)
FROM film;

SELECT SUM(replacement_cost)
FROM film;

-- GROUP BY
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount);

SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY customer_id, staff_id
ORDER BY customer_id, staff_id;

SELECT date(payment_date), SUM(amount)
FROM payment
GROUP BY date(payment_date)
ORDER BY date(payment_date);


SELECT staff_id, COUNT(payment_id)
FROM payment
GROUP BY staff_id
ORDER BY COUNT(payment_id) DESC;

SELECT rating, ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating
ORDER BY rating;

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

-- Having Statement

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 200
ORDER BY SUM(amount) DESC;

SELECT store_id, COUNT(*)
FROM customer
GROUP BY store_id
HAVING COUNT(*) > 300;

SELECT customer_id, COUNT(*)
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
ORDER BY COUNT(*);

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;