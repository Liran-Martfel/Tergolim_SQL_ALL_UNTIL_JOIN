DROP TABLE movies;
CREATE TABLE movies (
    id INTEGER PRIMARY KEY,
    title TEXT,
    genre TEXT,
    year INTEGER,
    rating REAL
);

INSERT INTO movies (id, title, genre, year, rating)
VALUES 
(1, 'Metro Rush', 'Action', 2005, 7.4),
(2, 'Quiet Lake', 'Drama', 2012, 8.1),
(3, 'Night Pulse', 'Horror', 2018, 6.8),
(4, 'Skyline Code', 'Action', 2021, 7.4),
(5, 'Tiny Planet', 'Family', 2010, 7.1),
(6, 'Silver Track', 'Thriller', 2016, 7.4);

SELECT *
FROM movies
ORDER BY rating DESC
LIMIT 2;

SELECT *
FROM movies
order by genre ASC, rating DESC;

SELECT *
from movies
ORDER BY year ASC
LIMIT 4;

SELECT *
FROM movies
LIMIT 2 OFFSET 2;