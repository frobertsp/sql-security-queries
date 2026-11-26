-- Failed login attempts after business hours
SELECT * FROM log_in_attempts
WHERE login_time > '18:00' AND success = 0;

-- Login attempts on specific dates
SELECT * FROM log_in_attempts
WHERE login_date = '2022-05-09' OR login_date = '2022-05-08';

-- Login attempts outside Mexico
SELECT * FROM log_in_attempts
WHERE NOT country LIKE 'MEX%';

-- Marketing employees in the East building
SELECT * FROM employees
WHERE department = 'Marketing' AND office LIKE 'East%';

-- Finance or Sales employees
SELECT * FROM employees
WHERE department = 'Finance' OR department = 'Sales';

-- Employees outside IT
SELECT * FROM employees
WHERE NOT department = 'Information Technology';
