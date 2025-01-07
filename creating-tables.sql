/*
 Data Types

 .  Boolean: true or false
 .  Character: char, varchar
 .  Numeric: integer, floating point
 .  Temporal: date, time, timestamp
 .  UUID
 .  Array
 .  JSON

 Most common constraints

 .  NOT NULL
 .  UNIQUE
 .  PRIMARY KEY
 .  FOREIGN KEY
 .  CHECK
 .  EXCLUSION

 Primary key type

 .  Serial

 */

DROP TABLE IF EXISTS account_job;
DROP TABLE IF EXISTS account;
DROP TABLE IF EXISTS job;

CREATE TABLE account
(
    user_id    serial PRIMARY KEY,
    username   varchar(50) UNIQUE  NOT NULL,
    password   varchar(50)         NOT NULL,
    email      varchar(250) UNIQUE NOT NULL,
    created_on timestamp           NOT NULL,
    last_login timestamp
);

CREATE TABLE job
(
    job_id   serial PRIMARY KEY,
    job_name varchar(200) UNIQUE NOT NULL
);

CREATE TABLE account_job
(
    user_id   integer REFERENCES account (user_id),
    job_id    integer REFERENCES job (job_id),
    hire_date timestamp
);


















