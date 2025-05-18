SELECT * FROM students;

SELECT country, count(*), avg(age) FROM students
GROUP BY country;

-- Filter Groups Using HAVING to Show Only Countries with Average Age Above 21
SELECT country, avg(age) FROM students
GROUP BY country
HAVING avg(age) >21;

-- Count Students Born in Each Year

SELECT extract (YEAR from dob) AS birth_year, count(*) 
  FROM students
    GROUP BY birth_year;