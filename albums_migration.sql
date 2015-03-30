-- type "vagrant ssh" in the command line to enter the secure vagrant shell
-- type "mysql -u codeup -p -t < albums_migration.sql" to run the following code:

USE codeup_test_db;

DROP TABLE IF EXISTS albums; 

CREATE TABLE albums (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name  VARCHAR(100) NOT NULL,
    release_date YEAR(4) NOT NULL,
    sales DECIMAL(4,1) NOT NULL,
    genre VARCHAR(256) DEFAULT 'NONE',
    PRIMARY KEY (id) 
);