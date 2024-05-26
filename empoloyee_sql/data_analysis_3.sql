-- DATA ANALYSIS #3
-- List the manager of each department along with their department number, department name, employee number, last name, and first name 
-- Tables: department_manager, deapartments, department_employees, titles

SELECT t.title, e.last_name, e.first_name, e.emp_no, dm.dept_no, d.dept_name 
FROM employees AS e
INNER JOIN department_managers AS dm
	ON e.emp_no = dm.emp_no
INNER JOIN departments AS d
	ON dm.dept_no = d.dept_no
INNER JOIN titles AS t
	ON e.title_id = t.title_id
WHERE t.title_id = 'm0001';