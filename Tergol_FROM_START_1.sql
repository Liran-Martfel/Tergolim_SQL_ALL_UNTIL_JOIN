--SQL introduction first Q - https://pythonai211225-rgb.github.io/sql/lessons/01_lesson/index.html#homework
DROP TABLE students;
CREATE TABLE students
(
	ID INTEGER PRIMARY KEY,
	NAME TEXT NOT NULL,
	AGE INTEGER,
	CITY TEXT,
	GRADE REAL NOT NULL
);
INSERT INTO students (ID,NAME,AGE,CITY,GRADE)
VALUES
	(1,'NOA',15,'TEL-AVIV',92.5),
	(2,'LIAM',16,'HAIFA',88.0),
	(3,'MAYA',15,'NETANYA',95.0),
	(4,'OMER',17,'JERUSALEM',81.5);
	
SELECT *
FROM students;

SELECT NAME,GRADE
FROM students;

SELECT name,GRADE
FROM students
WHERE GRADE > 90;

SELECT *
FROM students
WHERE NAME LIKE 'm%';

SELECT 
	max(GRADE) AS MAXIMUM,
	min(GRADE) AS MINIMUM,
	avg(GRADE) AS AVERAGE
FROM students;

SELECT NAME,GRADE,city
FROM students
WHERE GRADE > (SELECT AVG(GRADE) FROM students);

UPDATE students
SET GRADE = 90
WHERE NAME = 'LIAM';
SELECT *
FROM students;

DELETE FROM students
WHERE ID = 1;
SELECT *
FROM students;

