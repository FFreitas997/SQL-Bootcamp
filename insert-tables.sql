INSERT INTO account(username, password, email, created_on)
VALUES ('Jose', 'password', 'jose@gmail.com', CURRENT_TIMESTAMP);

INSERT INTO job(job_name) VALUES ('Astronaut');
INSERT INTO job(job_name) VALUES ('President');

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (3, 3, CURRENT_TIMESTAMP);

INSERT INTO account_job(user_id, job_id, hire_date)
VALUES (3, 4, CURRENT_TIMESTAMP);

/**
  insert into ... (column_1, column_2)
  select column_1, column_2
  from  ...
  where ....
 */