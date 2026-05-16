SELECT DISTINCT type
FROM netflix_movies_detailed_up_to_2025;

SELECT DISTINCT "cast"
FROM netflix_movies_detailed_up_to_2025
WHERE genres LIKE '%Action%';

SELECT title
FROM netflix_movies_detailed_up_to_2025
WHERE genres = 'Action' AND release_year >= 2015
order by release_year ASC
LIMIT 5;

SELECT title,rating
FROM netflix_movies_detailed_up_to_2025
order by rating DESC
LIMIT 1;

SELECT title AS movie_name,rating AS score
FROM netflix_movies_detailed_up_to_2025
order by rating DESC
LIMIT 5;

SELECT title, rating
FROM netflix_movies_detailed_up_to_2025
WHERE title Like "%one piece%";

SELECT title AS movie_name
FROM netflix_movies_detailed_up_to_2025
WHERE "cast" is NULL;
