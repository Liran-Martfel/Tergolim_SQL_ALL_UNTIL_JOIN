DROP TABLE movie;
CREATE TABLE movie
(
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	genre TEXT,
	year INTEGER,
	rating REAL,
	minutes INTEGER
);


INSERT INTO movie (title,genre,year,rating,minutes)
VALUES
	('Metro Rush','Action',2005,7.9,118),
	('Quiet lake','Drama',2012,8.1,124),
	('Night pulse','Horror',2018,6.8,95),
	('Skyline Code','Action',2021,7.4,109);
	
SELECT 
	title AS movie_name,
	year AS release_date,
	genre AS type
FROM movie;

SELECT rating * 10 AS Rating_bucket
FROM movie;

SELECT rating AS Rating_bucket,title AS movie_name
FROM movie
order by Rating_bucket DESC, movie_name ASC;