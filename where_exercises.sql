-- 2 ways to list employees with a first name of 'Irena', 'Vidya', OR 'Maya' 
SELECT * FROM employees WHERE `first_name` IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE `first_name` = 'Irena' 
OR `first_name`='Vidya'
OR `first_name`='Maya'; 
-- Employees with a first name of 'Irena', 'Vidy', or 'Maya' who are also male
SELECT * FROM employees WHERE `first_name` IN ('Irena', 'Vidya', 'Maya') AND `gender` = 'M';
-- Employees with last names that start with 'E'
SELECT * FROM employees WHERE `last_name` LIKE 'E%';
-- Employees with last names that start or end in 'e'
SELECT * FROM employees WHERE `last_name` LIKE 'E%' 
OR `last_name` LIKE '%e';
-- Employees with last names that start AND end in 'e' 
SELECT * FROM employees WHERE `last_name` LIKE 'E%' 
AND `last_name` LIKE '%e';
-- Employees hired in the 90s
SELECT * FROM employees WHERE `hire_date` LIKE '199%';
-- Employees born on Christmas
SELECT * FROM employees WHERE `birth_date` LIKE '%-12-25';
-- Employees hired in the 90s and born on Christmas
SELECT * FROM employees WHERE `hire_date` LIKE '199%' 
AND `birth_date` LIKE '%-12-25';
-- Employees whose last name contains a 'q'
SELECT * FROM employees WHERE `last_name` LIKE '%q%';
-- Employees whose last name contains a 'q' but NOT 'qu' 
SELECT * FROM employees WHERE `last_name` LIKE '%q%'
AND `last_name` NOT LIKE '%qu%'

