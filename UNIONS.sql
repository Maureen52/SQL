#UNIONS ALLOWS YOU TO COMBINE ROWS OF DATA FROM DIFF TABLES
SELECT*
FROM employee_demographics;

SELECT*
FROM employee_salary;

SELECT age,gender
FROM employee_demographics
UNION
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION DISTINCT
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL #we'll get all unions without removing any duplicates
SELECT first_name,last_name
FROM employee_salary;

SELECT first_name,last_name, 'OLD' AS label
FROM employee_demographics
WHERE age>50;

SELECT first_name,last_name, 'OLD' AS label
FROM employee_demographics
WHERE age>50
UNION
SELECT first_name,last_name,'HIGHLY PAID EMPLOYEE' AS label
FROM employee_salary
WHERE salary>70000 ;#will give an output for old and another for a hightly paid employee

SELECT first_name,last_name, 'OLD MAN' AS label
FROM employee_demographics
WHERE age>50 AND gender='Male'
UNION
SELECT first_name,last_name, 'OLD LADY' AS label
FROM employee_demographics
WHERE age>50 AND gender='Female'
UNION
SELECT first_name,last_name,'HIGHLY PAID EMPLOYEE' AS label
FROM employee_salary
WHERE salary>70000 ;

SELECT first_name,last_name, 'OLD MAN' AS label
FROM employee_demographics
WHERE age>40 AND gender='Male'
UNION
SELECT first_name,last_name, 'OLD LADY' AS label
FROM employee_demographics
WHERE age>40 AND gender='Female'
UNION
SELECT first_name,last_name,'HIGHLY PAID EMPLOYEE' AS label
FROM employee_salary
WHERE salary>70000 
ORDER BY first_name,last_name;



