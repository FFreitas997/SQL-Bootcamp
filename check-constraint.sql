DROP TABLE IF EXISTS employees;

CREATE TABLE employees
(
    emp_id     serial PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name  varchar(50) NOT NULL,
    birthday   date CHECK ( birthday > '1900-01-01' ),
    hire_date  date CHECK (hire_date > birthday),
    salary     integer CHECK ( salary > 0 )
);

INSERT INTO employees(first_name, last_name, birthday, hire_date, salary)
VALUES ('jose', 'portila', '1990-11-03', '2010-01-01', 100);