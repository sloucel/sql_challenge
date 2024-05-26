-- DATA ANALYSIS #4
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name
-- Tables: empoloyees, department_employees, and departments


SELECT e.emp_no, e.last_name, e.first_name, d.dept_no, d.dept_name
FROM employees AS e
INNER JOIN department_employees AS de
	ON e.emp_no = de.emp_no
INNER JOIN departments as d
	ON de.dept_no = d.dept_no