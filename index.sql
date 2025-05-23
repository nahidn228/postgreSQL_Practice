SELECT * from  employees;


EXPLAIN ANALYSE
SELECT * from employees WHERE employee_id = 20;

CREATE INDEX idx_employees_last_name
on employees (last_name);

SHOW data_directory;