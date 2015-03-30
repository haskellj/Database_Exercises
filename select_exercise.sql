USE codeup_test_db;

SELECT 'The name of all albums by Pink Floyd' AS 'The Following Represents:';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The year "Sgt. Pepper\'s Lonely Hearts Club Band" was released' AS 'The Following Represents:';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';

SELECT 'The genre for "Nevermind"' AS 'The following Represents:';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'All albums released in the 1990\'s' AS 'The following Represents:';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'All albums that sold less than 20 million certified sales' AS 'The following Represents:';
SELECT name FROM albums WHERE sales < 20;

SELECT 'All rock albums' AS 'The following Represents:';
SELECT name FROM albums WHERE genre LIKE '%rock%';