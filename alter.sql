-- Active: 1747405680009@@127.0.0.1@5432@ph
SELECT * FROM person2;


-- add Column
ALTER Table person2
ADD COLUMN email VARCHAR(250) DEFAULT 'default@mail.com' NOT NULL;

-- add value
INSERT INTO person2 VALUES(8,'test2',26, 'test@gmail.com');

-- Delete column
ALTER Table person2
DROP COLUMN email;

-- rename column name
ALTER Table person2
  RENAME COLUMN age to user_age;

-- Update dataType user_name varchar(50) to varchar(80)
ALTER TABLE person2
ALTER COLUMN user_name type varchar(80);

-- update constraint in column

ALTER Table person2
  alter COLUMN user_age set NOT NULL;

-- remove constraint in column

ALTER TABLE person2
alter column user_age DROP NOT NULL;

-- add constraint (unique) to selected column

ALTER Table person2
  ADD constraint unique_person2_user_age UNIQUE(user_age);

  -- Delete unique constraint 

ALTER Table person2
DROP constraint UNIQUE_person2_user_age;



-- watching truncate

SELECT * from person4;
INSERT into person4 VALUES(1,'nahid_hasan',26);
TRUNCATE TABLE person4;