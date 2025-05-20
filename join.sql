-- Active: 1747405680009@@127.0.0.1@5432@ph
CREATE Table "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
)



INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash! ☀️', 2),
('Batash just shared an amazing recipe! 🍲', 1),
('Exploring adventures with Sagor.🌟', 4),
('Nodi''s wisdom always leaves me inspired. 📚', 4);

SELECT * FROM "user";
SELECT * FROM post;

-- join two table and show title and user name
SELECT title, username from post 
JOIN "user" ON post.user_id = "user".id;

-- join two table and show
SELECT * from post 
JOIN "user" ON post.user_id = "user".id;

-- join two table and rename table name
-- Inner JOIN
SELECT username, title FROM post as p 
JOIN "user" as u ON p.user_id = u.id;


-- Inner JOIN
SELECT * from "user" 
JOIN post ON post.user_id = "user".id;


INSERT INTO post (id,title, user_id) VALUES
(5,'This is a test title! ☀️', NULL)


--Left JOIN
SELECT * from "user" 
LEFT JOIN post ON post.user_id = "user".id;

--RIGHT JOIN
SELECT * from "user" 
RIGHT JOIN post ON post.user_id = "user".id;