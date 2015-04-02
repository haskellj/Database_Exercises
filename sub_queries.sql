-- USE employees;
-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT *
FROM employees
WHERE hire_date IN (
		SELECT hire_date
		FROM employees
		WHERE emp_no = '101010'
);

-- Find all the CURRENT employees with the same hire date as employee 101010 using a sub-query.
SELECT *
FROM employees
WHERE hire_date IN (
		SELECT hire_date
		FROM employees
		WHERE emp_no = '101010' 
) AND emp_no IN (
		SELECT emp_no 
		FROM salaries
		WHERE to_date = '9999-01-01'
);

-- Find all the titles held by all employees with the first name Aamod.
SELECT *
FROM titles
WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE first_name = 'Aamod'
);

-- Find all the titles held by all CURRENT employees with the first name Aamod.
SELECT *
FROM titles
WHERE to_date = '9999-01-01' AND emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE first_name = 'Aamod'		
);

-- Find all the department managers that are female.
SELECT * 
FROM dept_manager
WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
);

-- Find all the CURRENT department managers that are female.
SELECT * 
FROM dept_manager
WHERE to_date = '9999-01-01' AND emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
);

-- Find all the department names that have female managers.
SELECT *
FROM departments
WHERE dept_no IN (
		SELECT dept_no 
		FROM dept_manager
		WHERE emp_no IN (
				SELECT emp_no
				FROM employees
				WHERE gender = 'F'
		)
);

-- Find all the department names that CURRENTLY have female managers.
SELECT *
FROM departments
WHERE dept_no IN (
		SELECT dept_no 
		FROM dept_manager
		WHERE to_date = '9999-01-01' AND emp_no IN (
				SELECT emp_no
				FROM employees
				WHERE gender = 'F'
		)
);

-- Compare the average historical salaries of female and male employees
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Historical Average Salary'
FROM salaries AS s 
JOIN employees AS e
	ON s.emp_no = e.emp_no 
GROUP BY Gender;

-- Compare the average CURRENT salaries of female and male employees
SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Historical Average Salary'
FROM salaries AS s 
JOIN employees AS e
	ON s.emp_no = e.emp_no
WHERE s.to_date >= NOW() 
GROUP BY Gender;


-- Compare the average historical salary of female managers to male managers
SELECT e.gender AS "Manager Gender", AVG(s.salary) AS 'Historical Average Salary'
FROM salaries AS s
JOIN dept_manager AS dm
	ON s.emp_no = dm.emp_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
GROUP BY e.gender;

-- Compare the average CURRENT salary of female managers to male managers
SELECT e.gender AS "Manager Gender", AVG(s.salary) AS 'Historical Average Salary'
FROM salaries AS s
JOIN dept_manager AS dm
	ON s.emp_no = dm.emp_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no
WHERE s.to_date >= NOW()
GROUP BY e.gender;

-- Display the historical ratio of female to male managers with a JOIN
SELECT e.gender AS 'Gender', COUNT(*) AS 'Number of Managers' 
FROM dept_manager AS dm
JOIN employees AS e
	ON dm.emp_no = e.emp_no
GROUP BY e.gender;

-- Display the CURRENT ratio of female to male managers with a JOIN
SELECT e.gender AS 'Gender', COUNT(*) AS 'Number of Managers' 
FROM dept_manager AS dm
JOIN employees AS e
	ON dm.emp_no = e.emp_no
WHERE dm.to_date >= NOW()
GROUP BY e.gender;


-- Display the historical ratio of female to male managers with a sub-query
SELECT gender AS 'Gender', COUNT(*) AS 'Number of Managers' 
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_manager
)
GROUP BY gender;

-- Display the CURRENT ratio of female to male managers with a sub-query
SELECT gender AS 'Gender', COUNT(*) AS 'Number of Managers' 
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date >= NOW()
)
GROUP BY gender;
