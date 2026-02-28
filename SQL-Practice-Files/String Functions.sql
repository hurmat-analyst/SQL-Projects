-- String Functions

SELECT LENGTH('skyfall');

SELECT first_name, length(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name)
FROM employee_demographics
;

SELECT TRIM('     sky    ');
SELECT LTRIM('     sky    ');
SELECT RTRIM('     sky    ');

SELECT first_name, 
LEFT(first_name,4),
RIGHT(first_name,4),
birth_date,
SUBSTRING(birth_date,6,2) AS birth_month
FROM employee_demographics
;

SELECT first_name, REPLACE(first_name,'n','r')
FROM employee_demographics;

SELECT LOCATE('a','Hurmat');

SELECT first_name, last_name,
CONCAT(first_name,' ',last_name) AS full_name
FROM employee_demographics;