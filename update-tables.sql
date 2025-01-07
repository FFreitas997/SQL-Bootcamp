UPDATE account
SET last_login = CURRENT_TIMESTAMP;

UPDATE account
SET last_login = created_on;

UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account.user_id

/*
 update tableA
 set original_col = tableB.new_column
 from tableA
 where tableA.id = tableB.id

 update tableA
 set column_1 = column_2
 returning column_3, column_4, column_5

 */