
--https://pythonai211225-rgb.github.io/sql/03_master/01-where-logic.html
SELECT *
FROM netflix_movies_detailed_up_to_2025
WHERE release_year > 2010 AND rating >= 7.0;

SELECT *
FROM netflix_movies_detailed_up_to_2025
WHERE (genres like '%Action%' OR genres like '%Horror%');

SELECT *
FROM netflix_movies_detailed_up_to_2025
WHERE genres Not like '%Drama%' and rating > 7.3; 


SELECT *
FROM netflix_movies_detailed_up_to_2025
WHERE (rating BETWEEN 7 AND 8.9) AND release_year > 2015;