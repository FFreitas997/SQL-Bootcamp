-- Delete
DELETE
FROM job
WHERE job_name = 'President'
RETURNING job_id, job_name;

-- Alter
CREATE TABLE information
(
    info_id serial PRIMARY KEY,
    title   varchar(500) NOT NULL,
    person  varchar(50)  NOT NULL UNIQUE
);

ALTER TABLE information
    RENAME TO new_info;

ALTER TABLE new_info
    RENAME COLUMN person TO people;

ALTER TABLE new_info
    ALTER COLUMN people DROP NOT NULL;
INSERT INTO new_info(title)
VALUES ('some new title');

ALTER TABLE new_info
    DROP COLUMN IF EXISTS person;

