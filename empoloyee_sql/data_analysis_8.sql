-- DATA ANALYSIS #8
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
-- Tables: employees

SELECT e.last_name, 
	COUNT(DISTINCT e.emp_no) AS c
FROM employees AS e
GROUP BY e.last_name
ORDER BY c DESC;

-- Verifying if the counts were indeed unique.
-- SELECT DISTINCT e.emp_no, e.last_name, e.first_name
-- FROM employees AS e
-- WHERE e.last_name = 'Baba'
-- ORDER BY e.emp_no DESC;