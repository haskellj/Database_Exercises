-- USE employees;

-- Counts of all male and female employees with a first name of 'Irena', 'Vidya', OR 'Maya'
SELECT COUNT(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

-- Employees with last names that start and/or end with 'E' concatinated into their full name, alphabetized by their last name, then their first name
SELECT CONCAT(first_name, ' ',last_name) AS 'FULL NAME' FROM employees WHERE `last_name` LIKE 'E%' OR last_name LIKE '%e'
ORDER BY last_name, first_name;

-- Employees hired in the 90s and born on Christmas organized by the oldest employees who were most recently hired. Show additional column representing how many days they've been employed as of today's date 
SELECT *, DATEDIFF(CURDATE(), hire_date) AS 'Days with the Company' FROM employees WHERE `hire_date` LIKE '199%' 
AND `birth_date` LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

-- Unique combinations of first and last names where the last name contains 'q' but not 'qu', including a column that shows how many other people shared that exact full name 
SELECT *, count(*) AS 'Times This Name Occurs' FROM employees 
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY count(*) DESC;

