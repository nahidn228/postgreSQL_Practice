SELECT * FROM books;
SELECT * FROM publishers;

ALTER TABLE books ADD COLUMN genre TEXT;
ALTER TABLE books DROP COLUMN genre;

ALTER TABLE books RENAME COLUMN  author_name to author;

SELECT title, LENGTH(title) FROM books;
SELECT COUNT(*) FROM books;

SELECT round(AVG(price)) FROM books;

SELECT MAX(price), MIN(price) FROM books;