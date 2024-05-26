-- DATA ANALYSIS #7
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
-- Tables: employees, department_employees, and departments

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employees AS de
	ON e.emp_no = de.emp_no
INNER JOIN departments AS d
	ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
	OR d.dept_name = 'Development';
