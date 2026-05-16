DROP TABLE movies_v2;
CREATE TABLE movies_v2 (
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    genre TEXT,
    year INTEGER,
    rating REAL,
    minutes INTEGER
);

INSERT INTO movies_v2 (id, title, genre, year, rating, minutes)
VALUES 
(1, 'Metro Rush', 'Action', 2005, 7.9, 118),
(2, 'Quiet Lake', 'Drama', 2012, 8.1, 124),
(3, 'Night Pulse', 'Horror', 2018, 6.8, 95),
(4, 'Skyline Code', 'Action', 2021, 7.4, 109);

SELECT 
title AS movie_name,
genre AS type,
year AS release_year
FROM movies_v2;

SELECT 
	rating * 10 AS RATING_BUCKET,
	title AS movie_name
FROM movies_v2
ORDER BY RATING_BUCKET DESC, movie_name ASC;