SELECT * FROM books;
SELECT * FROM publishers;

ALTER TABLE books ADD COLUMN genre TEXT;
ALTER TABLE books DROP COLUMN genre;

ALTER TABLE books RENAME COLUMN  author_name to author;

SELECT title, LENGTH(title) FROM books;
SELECT COUNT(*) FROM books;

SELECT round(AVG(price)) FROM books;

SELECT MAX(price), MIN(price) FROM books;


-- WHERE

SELECT * FROM books WHERE price BETWEEN 150 AND 200;
 SELECT * FROM books WHERE title LIKE 'The%';  -- Case Sensitive
SELECT * FROM books WHERE title ILIKE 't%';  -- Case Insensitive
SELECT * FROM books WHERE author IN ('George Orwell');


SELECT * FROM books LIMIT 3;
SELECT * FROM books LIMIT 3 OFFSET 3;
SELECT * FROM books LIMIT 3 OFFSET 6;

UPDATE books SET price = price*1.10;
SELECT * FROM books;


-- GROUPING
SELECT author, count(*) FROM books GROUP BY author;
SELECT title, count(*) FROM books GROUP BY title;

-- GROUPING & FILTERING

SELECT author, COUNT(*) FROM books GROUP BY author HAVING COUNT(*) > 1; -- here filtering is == HAVING COUNT(*) > 1

-- Foreign key deletion

ALTER TABLE books DROP CONSTRAINT books_publisher_id_fkey;
ALTER TABLE books ADD CONSTRAINT books_publisher_id_fkey 
FOREIGN KEY (publisher_id) REFERENCES publishers(id) ON DELETE CASCADE;


DELETE FROM publishers WHERE id = 3;


SELECT * FROM books;
SELECT * FROM publishers;