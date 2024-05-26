-- DATA ANALYSIS #2
-- List the first name, last name, and hire date for the employees who were hired in 1986
-- Tables: empoloyees

SELECT e.first_name, e.last_name, e.hire_date
FROM employees AS e 
WHERE e.hire_date BETWEEN '1986-01-01' AND  '1986-12-31';

