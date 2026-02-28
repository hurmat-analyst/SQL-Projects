-- Temporary Tables

SELECT *
FROM employee_salary;

CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary >= 50000;


SELECT *
FROM salary_over_50k;
