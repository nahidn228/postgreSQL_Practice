CREATE TABLE descriptions(
"id" SERIAL ,
"roll" NUMERIC PRIMARY KEY ,
"name" VARCHAR(100),
age NUMERIC,
department VARCHAR(5),
score FLOAT,
"status" BOOLEAN,
last_login TIMESTAMP
)

SELECT * from descriptions;

INSERT INTO descriptions(roll,name,age,department,score,status, last_login)
  VALUES (1, 'Nahid', 24, 'CSE', 3.93, TRUE, '2025-05-18 14:30:00'),
(2, 'Sadia', 23, 'EEE', 3.75, FALSE, '2025-05-17 10:15:00'),
(3, 'Rafi', 25, 'BBA', 3.60, TRUE, '2025-05-16 09:00:00'),
(4, 'Tania', 22, 'CSE', 3.85, TRUE, '2025-05-15 11:45:00'),
(5, 'Rizwan', 26, 'LAW', 3.40, FALSE, '2025-05-14 13:30:00'),
(6, 'Mitu', 24, 'CSE', 3.90, TRUE, '2025-05-13 16:20:00'),
(7, 'Tanvir', 25, 'EEE', 3.65, TRUE, '2025-05-12 08:10:00'),
(8, 'Farzana', 23, 'ENG', 3.78, TRUE, '2025-05-11 15:45:00'),
(9, 'Hasan', 26, 'CSE', 3.88, TRUE, '2025-05-10 17:00:00'),
(10, 'Nahid', 26, 'CSE', 3.93, TRUE, '2025-05-18 14:30:00'),
(11, 'Shila', 24, 'BBA', 3.45, FALSE, '2025-05-09 10:25:00'),
(12, 'Fahim', 27, 'CSE', 3.92, TRUE, '2025-05-08 12:00:00'),
(13, 'Nadia', 22, 'EEE', 3.55, TRUE, '2025-05-07 14:10:00'),
(14, 'Mahin', 23, 'LAW', 3.33, FALSE, '2025-05-06 13:00:00'),
(15, 'Rumi', 24, 'CSE', 3.89, TRUE, '2025-05-05 11:30:00'),
(16, 'Asif', 25, 'ENG', 3.67, TRUE, '2025-05-04 09:45:00'),
(17, 'Jannat', 23, 'CSE', 3.95, TRUE, '2025-05-03 10:10:00'),
(18, 'Zahid', 26, 'EEE', 3.70, TRUE, '2025-05-02 15:55:00'),
(19, 'Mim', 22, 'CSE', 3.91, TRUE, '2025-05-01 17:15:00'),
(20, 'Tanisha', 25, 'BBA', 3.50, FALSE, '2025-04-30 14:45:00')

-- DROP TABLE descriptions;
INSERT INTO descriptions (roll,name,age,department,score,status, last_login) 
VALUES (21, 'Hasan', 24, 'CSE', 3.93, TRUE, '2025-05-18 14:30:00')

ALTER TABLE descriptions
ADD COLUMN email VARCHAR(100);

ALTER Table descriptions
RENAME COLUMN email to student_email;
ALTER Table descriptions
ADD constraint unique_student_email UNIQUE (student_email);

CREATE TABLE courses (
  course_id serial PRIMARY KEY,
  course_name text NOT NULL,
  credit NUMERIC
)

ALTER TABLE descriptions
DROP student_email;

SELECT * FROM descriptions
  WHERE score >= 3.80 ORDER BY score ASC; 

SELECT * FROM descriptions
  -- WHERE department != 'CSE';
  WHERE NOT department = 'EEE';

SELECT * FROM descriptions
-- WHERE name LIKE 'N%';
-- WHERE name LIKE '%n';
-- WHERE name ILIKE '%N';
-- WHERE name ILIKE 'n%';

SELECT * FROM descriptions
WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;


SELECT * FROM descriptions 
WHERE roll IN (5,9,15,20);

SELECT COUNT (*)  AS total_rows
 FROM descriptions;

SELECT AVG (score) as avg_score
FROM descriptions WHERE department = 'CSE';

SELECT MIN(age) AS minimum_age
FROM descriptions;

SELECT MAX(age) AS maximum_age FROM descriptions;
