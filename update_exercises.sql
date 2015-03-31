USE codeup_test_db;


SELECT name AS 'All Albums in Table'
FROM albums;

UPDATE albums
SET sales = sales * 10;

SELECT artist AS 'Artist', name AS 'Album', sales AS 'Sales x10'
FROM albums;
-- 
SELECT name AS 'Albums Released Before 1980', release_date AS 'Year'
FROM albums WHERE release_date < 1980;

UPDATE albums
SET release_date = release_date - 100
WHERE release_date < 1980;

SELECT name AS 'Albums Now Released Before 1880', release_date As 'New Year'
FROM albums WHERE release_date < 1880;
-- 
SELECT artist AS 'Artist', name AS 'Albums by Michael Jackson'
FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist AS 'Artist', name AS 'Albums Now by Peter Jackson'
FROM albums WHERE artist = 'Peter Jackson';
-- 
