USE employees;

-- List all the departments that are currently managed by women.
SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' AND e.gender = 'F';

-- List the current titles of employees currently working in the Customer Service department 
SELECT t.title AS Title, COUNT(*) AS Count
FROM employees AS e
JOIN dept_emp AS de
   ON de.emp_no = e.emp_no
JOIN titles AS t
  ON t.emp_no = e.emp_no 
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND de.dept_no = 'd009'
GROUP BY t.title; 

-- List the current salary of all current managers
SELECT d.dept_name AS 'Department NAME', CONCAT(e.first_name, ' ', e.last_name) AS 'NAME', s.salary AS 'Salary'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e. emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
JOIN salaries AS s
  ON s.emp_no = e.emp_no 
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01';

-- List the names of all current employees, their department name, and their current manager's NAME
SELECT CONCAT(e.first_name, ' ', e.last_name) AS Employee, d.dept_name AS Department, CONCAT(m.first_name, ' ', m.last_name) AS Manager
FROM employees AS e
JOIN dept_emp AS de 
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no 
JOIN employees AS m 
  ON dm.emp_no = m.emp_no 
WHERE de.to_date = '9999-01-01' AND dm.to_date = '9999-01-01'
ORDER BY Department, Employee;