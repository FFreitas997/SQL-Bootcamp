-- Case expression
SELECT customer_id,
       CASE
           WHEN (customer_id <= 100) THEN 'Premium'
           WHEN (customer_id BETWEEN 100 AND 200) THEN 'Plus'
           ELSE 'Normal'
           END AS customer_class
FROM customer;

SELECT customer_id,
       CASE customer_id
           WHEN 2 THEN 'Winner'
           WHEN 5 THEN 'Second Place'
           ELSE 'Normal'
           END AS raffle_results
FROM customer;

SELECT SUM(CASE rental_rate WHEN 0.99 THEN 1 ELSE 0 END) AS bargains,
       SUM(CASE rental_rate WHEN 2.99 THEN 1 ELSE 0 END) AS regular,
       SUM(CASE rental_rate WHEN 4.99 THEN 1 ELSE 0 END) AS premium
FROM film;

SELECT SUM(CASE rating WHEN 'R' THEN 1 ELSE 0 END)     AS r,
       SUM(CASE rating WHEN 'PG' THEN 1 ELSE 0 END)    AS pg,
       SUM(CASE rating WHEN 'PG-13' THEN 1 ELSE 0 END) AS pg13
FROM film;

-- COALESCE expression
-- ex: SELECT COALESCE(1, 2) -> it returns 1
-- ex: SELECT COALESCE(NULL, 2, 3) -> it returns 2

-- CAST expression
SELECT CAST('5' AS integer) AS result;

-- postgresql only supports
SELECT '5' :: integer;

SELECT CHAR_LENGTH(CAST(inventory_id AS varchar))
FROM rental;

-- NULLIF function
-- ex: NULLIF(10, 10) -> returns null
-- ex: NULLIF(10, 5) -> returns 10

-- Views
CREATE OR REPLACE VIEW customer_info AS
SELECT first_name, last_name, address, district
FROM address
         INNER JOIN customer c ON address.address_id = c.address_id;

SELECT * FROM customer_info;

DROP VIEW IF EXISTS customer_info;

ALTER VIEW customer_info RENAME TO c_info;










