SELECT *
FROM parks_and_recreation.employee_demographics;


SELECT first_name,
last_name,
age,
(age +10) *10
FROM parks_and_recreation.employee_demographics;
#CALCULATIONS IN SQL FOLLOW PEMDAS PARANTHESIS,EXPONENTIAL,MDAS


SELECT DISTINCT gender
FROM parks_and_recreation.employee_demographics;
#itll give male and emale exactly like in group up