-- USE join_test_db;

SELECT count(users.name) AS 'Number of Users', roles.name AS 'Role'
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;