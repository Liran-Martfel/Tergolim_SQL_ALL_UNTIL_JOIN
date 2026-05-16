DROP TABLE Movies;
CREATE TABLE Movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT,
    genre TEXT,
    year INT,
    language TEXT
);

INSERT INTO Movies (id, title, genre, year, language) VALUES
(1, 'Metro Rush', 'Action', 2005, 'English'),
(2, 'Quiet Lake', 'Drama', 2012, 'English'),
(3, 'Night Pulse', 'Horror', 2018, 'Spanish'),
(4, 'Skyline Code', 'Action', 2021, 'English'),
(5, 'Tiny Planet', 'Family', 2010, 'French'),
(6, 'Silver Track', 'Thriller', 2016, 'Spanish'),
(7, 'Golden Path', 'Drama', 2016, 'French');


SELECT DISTINCT language
FROM Movies;

SELECT DISTINCT year
FROM Movies
WHERE genre = 'Drama' or  genre = 'Action';


SELECT DISTINCT genre,language
FROM Movies
order by language ASC;

SELECT count(DISTINCT genre)
FROM Movies;
