CREATE Table students (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  age INT ,
  grade CHAR(2),
  course VARCHAR(50),
  email VARCHAR(100),
  dob DATE,
  blood_group VARCHAR(5),
  country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A', 'Math', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 21, 'B', 'History', 'jane.smith@example.com', '2003-05-20', 'A-', 'Canada'),
    ('Alice', 'Johnson', 19, 'A', 'Physics', 'alice.johnson@example.com', '2002-11-08', 'B+', 'UK'),
    ('Bob', 'Williams', 22, 'C', 'Chemistry', 'bob.williams@example.com', '2001-07-03', 'AB-', 'Australia'),
    ('Charlie', 'Brown', 20, 'B', 'English', NULL, '2004-03-30', 'A+', 'New Zealand'),
    ('Emman', 'Jones', 23, 'B', 'Biology', 'emma.jones@example.com', '2000-09-12', 'A-', 'USA'),
    ('Michael', 'Johnson', 22, 'C', 'Physics', 'michael.johnson@example.com', '2002-04-05', 'O-', 'Canada'),
    ('Olivia', 'Davis', 21, 'A', 'Math', 'olivia.davis@example.com', '2003-12-18', 'B-', 'UK'),
    ('William', 'Taylor', 20, 'B', 'Chemistry', NULL, '2004-08-30', 'A+', 'Australia'),
    ('Sophia', 'Brown', 24, 'A', 'English', 'sophia.brown@example.com', '1999-06-25', 'AB+', 'New Zealand'),
    ('Liam', 'Miller', 19, 'C', 'History', 'liam.miller@example.com', '2002-02-10', 'A-', 'USA'),
    ('Ava', 'Anderson', 22, 'B', 'Biology', 'ava.anderson@example.com', '2000-11-15', 'B+', 'Canada'),
    ('Noah', 'Martinez', 21, 'A', 'Physics', NULL, '2001-04-28', 'O+', 'UK'),
    ('Isabella', 'Clark', 20, 'C', 'Chemistry', 'isabella.clark@example.com', '2003-10-03', 'A-', 'Australia'),
    ('Ethan', 'Garcia', 23, 'B', 'Math', 'ethan.garcia@example.com', '2000-07-22', 'B-', 'New Zealand'),
    ('Sophie', 'Moore', 22, 'A', 'English', 'sophie.moore@example.com', '2002-12-05', 'A+', 'USA'),
    ('Mia', 'Hernandez', 20, 'C', 'History', 'mia.hernandez@example.com', '2004-05-18', 'AB-', 'Canada'),
    ('James', 'Young', 21, 'B', 'Biology', 'james.young@example.com', '2003-02-08', 'O-', 'UK'),
    ('Emma', 'Gonzalez', 24, 'A', 'Physics', NULL, '1999-09-30', 'B+', 'Australia'),
    ('Miam', 'Wright', 19, 'C', 'Math', 'liam.wright@example.com', '2002-06-14', 'A+', 'New Zealand');

-- SELECT email, age, dob FROM students;
-- show the column name "email" as "Student Email"
SELECT email as "Student Email", * from students;

-- sorting using first_name 
SELECT * FROM students ORDER BY first_name ASC;
-- sorting using age descending order
SELECT * from students ORDER BY age DESC;

SELECT country from students ORDER BY country ASC;

-- check unique country 
SELECT DISTINCT country FROM students;

-- check unique blood_group
SELECT DISTINCT blood_group FROM students;

-- data filtering

-- Select students from the USA
-- Select students with 'A' grade in Physics
-- Select students with a specific blood group ('A+')
-- Select students from the USA or from Australia
-- Select students from the USA or from Australia and the age is 20
-- Select students with a grade of 'A' or 'B' in Math or Physics:
-- Select students older than 20

-- Select students from the USA
SELECT * FROM students 
  WHERE country = 'USA';


-- Select students with 'A' grade in Physics
SELECT * FROM students
WHERE course = 'Physics' AND grade = 'A';

-- Select students with a specific blood group ('A+')
SELECT * FROM students 
WHERE blood_group = 'A+';
-- Select students from the USA or from Australia
SELECT * FROM students 
WHERE country = 'USA' OR country= 'Australia';

-- Select students from the USA or from Australia and the age is 20
SELECT * FROM students 
WHERE age = 20 AND (country = 'USA' OR country= 'Australia') ;

-- Select students with a grade of 'A' or 'B' in Math or Physics:

SELECT * FROM students 
  WHERE (grade = 'A' OR grade = 'B') AND (course = 'Math' OR course = 'Physics');

-- Select students older than 20
SELECT * FROM students
WHERE age > 20;

-- show first name in uppercase 
SELECT upper(first_name), * from students

-- show first_name and last_name in one column

SELECT concat(first_name, ' ', last_name) FROM students;


/*
    @Scalar functions
 UPPER() Converts a string to uppercase.
 LOWER() Converts a string to lowercase.
 CONCAT() Concatenates two or more strings.
 LENGTH() Returns the number of characters in a string.
 
    @Aggregate functions
 AVG() Calculate the average of a set of values.
 MAX() Returns the max value in a set.
 MIN() Returns the minimum value in a set.
 SUM Calculates the sum of values in a set.
 COUNT() Counts the number of rows in a set.

*/


SELECT * FROM students
WHERE NOT country = 'USA';

SELECT * FROM students
WHERE country != 'USA';

SELECT * FROM students 
WHERE email IS NULL;

SELECT * FROM students 
WHERE email IS NOT NULL;

-- set default value where value is NULL

SELECT COALESCE(email, 'Email not provided') FROM students;
-- ekhane email er value thakle otay bosabe na thakle 'Email not provided'