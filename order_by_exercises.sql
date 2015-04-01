-- USE employees;

-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' ordered by f.name 
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name;
-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' ordered by f.name, then last name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name, last_name;
-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' ordered by L.name, then first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;
-- Employees with last names that start with 'E' ordered by employee number
SELECT * FROM employees WHERE `last_name` LIKE 'E%'
ORDER BY emp_no;

-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' in descending order by f.name 
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name DESC;
-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' in descending order by f.name, then last name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name DESC, last_name DESC;
-- Male employees with a first name of 'Irena', 'Vidya', OR 'Maya' in descending order by L.name, then first name
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name DESC, first_name DESC;
-- Employees with last names that start with 'E' in descending order by employee number
SELECT * FROM employees WHERE `last_name` LIKE 'E%'
ORDER BY emp_no DESC;


-- Employees hired in the 90s and born on Christmas organized by the oldest employees who were most recently hired 
SELECT * FROM employees WHERE `hire_date` LIKE '199%' 
AND `birth_date` LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

