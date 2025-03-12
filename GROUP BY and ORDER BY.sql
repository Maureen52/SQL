SELECT *
FROM employee_demographics;


SELECT gender
FROM employee_demographics
#GROUP BY is used to group together rows that have the same values in the specified culumn(s) that youre grouping on
#once youve grouped those rows together,yu can run an aggregate function on those rows
GROUP BY gender;
#itll give male and female exactly like DISTINCT in select statements
#if youre not performing an aggregate fuction(eg avg),whatever you select should be same as whatever you group by

SELECT gender ,AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT *
FROM employee_salary;

SELECT occupation
FROM employee_salary
GROUP by occupation;

SELECT occupation,AVG(salary)
FROM employee_salary
GROUP by occupation;

SELECT occupation,salary
FROM employee_salary
GROUP by occupation,salary;
#notice that sice office manager has does not have same value,each will be represented alone,if they were same or an aggregaet function was added,theyd be together

SELECT gender,AVG(age),MAX(age),min(age),COUNT(age)
FROM employee_demographics
GROUP by gender;

#ORDER BY(USED TO SORT THE RESULT SET IN EITHER ASC OR DESCENDING ORDER)
SELECT *
FROM employee_demographics;

SELECT *
FROM employee_demographics
ORDER BY first_name;
#by default itll be ASC to change add DESC 

SELECT *
FROM employee_demographics
ORDER BY gender;

SELECT *
FROM employee_demographics
ORDER BY gender,age;

SELECT *
FROM employee_demographics
ORDER BY gender,age DESC;

SELECT *
FROM employee_demographics
ORDER BY age,gender;
#here the gender will not be grouped at all

SELECT *
FROM employee_demographics
ORDER BY 5,4;





