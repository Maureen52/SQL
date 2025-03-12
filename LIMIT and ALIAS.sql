#LIMIT (HOW MANY ROWS YOU WANT IN THE OUTPUT)AND ALIASING
SELECT*
FROM employee_demographics;

SELECT*
FROM employee_demographics
LIMIT 3;
#TAKES TOP 3

SELECT*
FROM employee_demographics
ORDER BY age DESC #3 OLDEST PEOPLE IN THE TABLE
LIMIT 3;

SELECT*
FROM employee_demographics
ORDER BY age DESC 
LIMIT 2,1;#STARTS AT ROW 2 AND PICKS ONE ROW BELOW IT

#ALIASING GIVING A NEW NAME
SELECT gender ,AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT gender ,AVG(age) as avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age >40;




