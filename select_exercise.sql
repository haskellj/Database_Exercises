USE codeup_test_db;

SELECT name AS 'All Albums by Pink Floyd'
FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Year "Sgt. Pepper\'s Lonely Hearts Club Band" was Released'
FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT genre AS 'The Genre for "Nevermind"'
FROM albums WHERE name = 'Nevermind';

SELECT name AS 'Albums Released in the 1990\'s'
FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT name AS 'Albums with Less Than 20 million Certified Sales'
FROM albums WHERE sales < 20;

SELECT name AS 'All Rock Albums'
FROM albums WHERE genre LIKE '%rock%';