#having vs where
SELECT*
from employee_demographics;

SELECT gender,AVG(age)
from employee_demographics
GROUP BY gender;

SELECT gender,AVG(age)
from employee_demographics
WHERE AVG(age)>40
GROUP BY gender;
#THIS WILL GIVE ERROR BECAUSE THE GROUP BY HASNT HAPPENED

SELECT gender,AVG(age)
from employee_demographics
GROUP BY gender
HAVING AVG(age)>40;

SELECT*
FROM employee_salary;

SELECT occupation,AVG(salary)
FROM employee_salary
GROUP BY occupation;

SELECT occupation,AVG(salary)
FROM employee_salary
WHERE OCCUPATION LIKE '%Manager%'
GROUP BY occupation;

SELECT occupation,AVG(salary)
FROM employee_salary
WHERE OCCUPATION LIKE '%Manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;








