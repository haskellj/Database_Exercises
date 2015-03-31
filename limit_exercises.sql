-- the first 10 distinct last name sorted in descending order
SELECT DISTINCT last_name FROM employees 
ORDER BY last_name DESC
LIMIT 10;

-- the first 5 employees with Christmas birthdays who were hired in the 90s, ordered by the oldest and most recently hired
SELECT first_name, last_name FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' 
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

-- the 46th to 50th employees with Christmas birthdays who were hired in the 90s, ordered by the oldest and most recently hired
SELECT first_name, last_name FROM employees WHERE birth_date LIKE '%-12-25' AND hire_date LIKE '199%' 
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;

