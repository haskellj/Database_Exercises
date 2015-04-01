-- USE employees;

-- UNIQUE titles ordered alphabetically
SELECT DISTINCT title FROM titles
ORDER BY title;

-- UNIQUE last names that start and end with 'E'
SELECT last_name FROM employees WHERE last_name LIKE 'E%e'
GROUP BY last_name;

-- unique combinations of first and last name where the last name starts and ends with 'e'
SELECT first_name, last_name FROM employees WHERE last_name LIKE 'E%e' 
GROUP BY first_name, last_name;

-- unique last names with a 'q' but not 'qu'
SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%' 
AND last_name NOT LIKE '%qu%';

