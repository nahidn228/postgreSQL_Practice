SHOW TIMEZONE;

SELECT now();

CREATE Table timez(ts TIMESTAMP without TIME zone, tsz TIMESTAMP with TIME zone);
INSERT INTO timez VALUES ('2025-05-19 20:17:00','2025-05-19 20:17:00');
SELECT * FROM timez;

SELECT CURRENT_DATE;
SELECT now()::time;
SELECT now()::date;

SELECT to_char(now(), 'dd/mm/yyyy');
SELECT CURRENT_DATE - INTERVAL '1 year 0 months';

SELECT age(CURRENT_DATE, '1998-02-15');

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract (MONTH FROM '2025-05-18'::DATE); --5
SELECT extract (DAY FROM '2025-05-18'::DATE); --18
SELECT extract (YEAR FROM '2025-05-18'::DATE); --2025


SELECT 'n'::BOOLEAN; --false
SELECT 'y'::BOOLEAN; --true
SELECT '1'::BOOLEAN; --true
SELECT '0'::BOOLEAN; --false

