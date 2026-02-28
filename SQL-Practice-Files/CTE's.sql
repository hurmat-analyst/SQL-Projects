-- CTEs 
-- Common Table Expression

WITH CTE_Example(Gender, avg_sal, max_sal, min_sal, count_sal) AS (
SELECT gender , AVG(salary), MAX(salary), MIN(salary), COUNT(salary)
FROM employee_demographics AS dem
JOIN employee_salary AS sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender)
SELECT *
FROM CTE_Example
;
WITH CTE_Example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics
WHERE birth_date > '1985-01-01'
),
CTE_Example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_Example
JOIN CTE_Example2
	ON CTE_Example.employee_id = CTE_Example2.employee_id
    ;
    