-- Active: 1747405680009@@127.0.0.1@5432@ph@public
CREATE TABLE "user" (
  id SERIAL PRIMARY KEY,
  username VARCHAR(25) NOT NULL
)

CREATE Table post(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  user_id INTEGER REFERENCES "user"(id)

)


INSERT into "user" VALUES()

SELECT * FROM "user"
