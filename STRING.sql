-- STRING FUNCTIONS (are built in functios within MySQL that will help us use strings)
SELECT*
FROM employee_demographics;

#1.length
SELECT first_name, LENGTH(first_name)
FROM employee_demographics
ORDER BY 2;

SELECT LENGTH('sky');

SELECT UPPER('sky');
SELECT LOWER('sky');

SELECT first_name, UPPER(first_name) #UPPER CASE
FROM employee_demographics;

#TRIM(TRIM,LEFT TRIM AND RIGHT TRIM) IS GONNA REMOVE THE WHITE SPACES AT THE END OR BEGINNING
SELECT TRIM('          sky           ');
SELECT LTRIM('          sky           ');
SELECT RTRIM('          sky           ');


SELECT* 
FROM employee_demographics;

SELECT first_name,LEFT(first_name,4)#4 specifies how many values from the left hansdide we want selected
FROM employee_demographics;

SELECT first_name,RIGHT(first_name,4)
FROM employee_demographics;

SELECT first_name,
RIGHT(first_name,4),
LEFT(first_name,4),
SUBSTRING(first_name,3,2)#3-position we want to start at,then specify how many characters we want
FROM employee_demographics;

SELECT first_name,
RIGHT(first_name,4),
LEFT(first_name,4),
SUBSTRING(first_name,3,2),#3-position we want to start at,then specify how many characters we want
birth_date,
SUBSTRING(birth_date,6,2) as birth_month
FROM employee_demographics;


#REPLACE
SELECT*
FROM employee_demographics;

SELECT first_name,REPLACE(first_name,'a','z') -- anywhere with a is replaced with z
FROM employee_demographics;

#LOCATE
SELECT LOCATE ('x','Alexander'); #x in alexander

SELECT first_name ,LOCATE('An',first_name)
FROM employee_demographics;

#CONCATENATION
SELECT first_name ,last_name
FROM employee_demographics;

SELECT first_name ,last_name, 
CONCAT(first_name,'  ',last_name) AS FULL_NAME
FROM employee_demographics;












