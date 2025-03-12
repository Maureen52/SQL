# Subqueries(These are queries within another query)

SELECT *
FROM employee_demographics;
SELECT *
FROM employee_salary;

#in a where clause
SELECT *
FROM employee_demographics
WHERE employee_id IN #WHERE EMPLOYE ID IN EMPLOYEE DEMOGRAPHICS IS IN
			(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1);
                

SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id, salary# WILL GIVE AN ERROR BECAUSE THIS  SHOULD MENTION ONLY ONE COLUMN 
				FROM employee_salary
                WHERE dept_id = 1);


#SELECT CLAUSE
SELECT first_name, salary, AVG(salary)
FROM employee_salary;#This will give an since we are using columns with an aggregate function so we need to use group by

SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;#but even if we use group by,it wont give what we want since it's giving us the average PER GROUP

SELECT first_name, 
salary, 
(SELECT AVG(salary) 
	FROM employee_salary)
FROM employee_salary;

# FROM Statement(used when we are creating like a small table)
SELECT *
FROM employee_demographics;

SELECT*
FROM (SELECT gender,AVG(age), MIN(age), MAX(age), COUNT(age)
FROM employee_demographics
GROUP BY gender) ;#GIVES AN ERROR SAYING WE HAVE TO NAME IT

SELECT gender, AVG(Min_age)
FROM 
(SELECT gender, MIN(age) Min_age, MAX(age) Max_age, COUNT(age) Count_age ,AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender;

