-- DATA ANALYSIS #5
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
-- Tables: empoloyees

SELECT e.first_name, e.last_name, e.sex
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE'B%';