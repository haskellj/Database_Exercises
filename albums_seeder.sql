USE codeup_test_db;

-- Delete all previously compiled rows and replace with the following insertion
-- Otherwise, the rows will continue to append to themselves everytime the seeder file is uploaded
TRUNCATE TABLE albums;

INSERT INTO albums (artist, name, release_date, sales, genre)
			VALUES ('Michael Jackson', 'Thriller', 1982, 42.4, 'Pop, rock, R&B'),
				   ('Pink Floyd', 'The Dark Side of the Moon', 1973, 22.7, 'Progressive rock'),
				   ('Whitney Houston', 'The Bodyguard', 1992, 27.4, 'R&B, soul, pop'),
				   ('Meat Loaf', 'Bat Out of Hell', 1992, 20.6, 'Hard rock, progressive rock'),
				   ('Eagles', 'Their Greatest Hits (1971-1975)', 1976, 32.2, 'Rock, soft rock, folk rock'),
				   ('AC/DC', 'Back in Black', 1980, 25.9, 'Hard rock'),
				   ('Bee Gees', 'Saturday Night Fever', 1977, 19, 'Disco'),
				   ('Fleetwood Mac', 'Rumours', 1977, 27.9, 'Soft rock'),
				   ('Shania Twain', 'Come on Over', 1997, 29.6, 'Country, pop'),
				   ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29.0, 'Hard rock, heavy metal'),
				   ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.8, 'Alternative rock'),
				   ('Celine Dion', 'Falling into You', 1996, 20.2, 'Pop/Soft rock'),
				   ('The Beatles', 'Sgt. Pepper\'s Lonely Hearts Club Band', 1967, 13.1, 'Rock'),
				   ('Eagles', 'Hotel California', 1976, 21.5, 'Rock, soft rock, folk rock'),
				   ('Mariah Carey', 'Music Box', 1993, 17.6, 'Pop/R&B/Rock'),
				   ('Various Artists', 'Dirty Dancing', 1987, 17.9, 'Pop, rock, R&B'),
				   ('Celine Dion', 'Let\'s Talk About Love', 1997, 19.3, 'Pop/Soft rock'),
				   ('The Beatles', '1', 2000, 21.6, 'Rock'),
				   ('Adele', '21', 2011, 21.3, 'Pop, soul'),
				   ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
				   ('Bruce Springsteen', 'Born in the U.S.A', 1984, 19.6, 'Rock'),
				   ('Dire Straits', 'Brothers in Arms', 1985, 18.6, 'Rock'),
				   ('Whitney Houston', 'Whitney Houston', 1985, 17.2, 'Pop, R&B'),
				   ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Soundtrack'),
				   ('Madonna', 'The Immaculate Collection', 1990, 19.4, 'Pop/Dance'),
				   ('Metallica', 'Metallica', 1991, 19.9, 'Thrash metal/heavy metal'),
				   ('Michael Jackson', 'Bad', 1987, 18.4, 'Pop, funk, rock'),
				   ('Michael Jackson', 'Dangerous', 1991, 16.3, 'Rock/Funk/Pop'),
				   ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, alternative rock'),
				   ('Pink Floyd', 'The Wall', 1979, 17.6, 'Progressive rock'),
				   ('Santana', 'Supernatural', 1999, 20.5, 'Rock'),
				   ('Guns N\' Roses', 'Appetite for Destruction', 1987, 21.3, 'Heavy metal/hard rock');

-- Output a message to Command Line when migration succeeds:
SELECT 'Successful!' AS 'Seeder Migration';