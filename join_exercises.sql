-- USE join_test_db;

-- Use count and the appropriate join type to get a list of roles along with the number 
-- of users that has the role. Hint: You will also need to use group by in the query.
SELECT count(users.name) AS 'Number of Users', roles.name AS 'Role'
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;



-- Use employees;

-- shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Department, CONCAT(e.first_name, ' ', e.last_name) AS Dept_Manager
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';