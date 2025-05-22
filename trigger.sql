/*
A trigger is a database object in PostgreSQL (and other database management systems) that automatically executes a specified set of actions in response to certain database events or conditions. 
*/

-- Table-Level Events:
    -- INSERT, UPDATE, DELETE, TRUNCATE
-- Database-Level Events
    -- Database Startup, Database Shutdown, Connection start and end etc

-- CREATE TRIGGER trigger_name
-- {BEFORE | AFTER | INSTEAD OF} {INSERT | UPDATE | DELETE | TRUNCATE}
-- ON table_name
-- [FOR EACH ROW] 
-- EXECUTE FUNCTION function_name();

CREATE Table my_users
(
    user_name VARCHAR(50),
    email VARCHAR(100)
);

INSERT INTO my_users VALUES('Mezba', 'mezba@mail.com'), ('Mir', 'mir@mail.com');

SELECT * from my_users;
SELECT * from deleted_users_audit;

CREATE Table deleted_users_audit
(
    deleted_user_name VARCHAR(50),
    deletedAt TIMESTAMP
)


-- TRIGGER function
CREATE OR REPLACE FUNCTION save_deleted_user()
-- its ALWAYS RETURNS TRIGGER for a  trigger function 
RETURNS TRIGGER
LANGUAGE PLPGSQL
AS
$$
  BEGIN
    INSERT INTO deleted_users_audit VALUES (OLD.user_name, now());
    RAISE NOTICE 'Delete user audit log created';

    RETURN OLD;
  END
$$

-- TRIGGER

CREATE OR REPLACE Trigger save_delete_user_trigger
BEFORE DELETE
ON my_users
for EACH ROW
EXECUTE FUNCTION save_deleted_user();

DELETE FROM my_users WHERE user_name = 'Mir';