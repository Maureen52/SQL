#JOINS USED TO COMBINE TWO /MORE TABLES BASED ON A RELATED COLUMN BETWN THEM THE COLUMN NAME DOESNT HAVE TO BE SAME AS ONG AS IT HAS SAME DETAILS
SELECT*
FROM employee_demographics;

SELECT*
FROM employee_salary;

#inner,outer &self join
-- 1.INNER JOIN(BY DEFAULT JOIN MEANS INNER JOIN ,BUT FOR EXPLICITY ILL WRITE IT)
SELECT*
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_id =employee_id;#THIS WILL GIVE AN ERROR
    
SELECT*
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    
SELECT*
FROM employee_demographics AS dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
SELECT employee_id,age,ocuupation#This will give an error because it doesnt know where to take the employee_id details from 
FROM employee_demographics
INNER JOIN employee_salary
	ON employee_demographics.employee_id = employee_salary.employee_id;
    
SELECT dem.employee_id,age,occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
#2.OUTER JOINS(LEFT,takes everything from the left table even if there is no match and bring it to match to the right table AND RIGHT OUTER JOIN)
SELECT *
FROM employee_demographics as dem #LEFT TABLE
LEFT JOIN employee_salary as sal #RIGHT TABLE
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM employee_demographics as dem 
RIGHT JOIN employee_salary as sal #TAKES EVERYTHING FROM EMPLOYEE SALARY TABLE TABLE BUT IF THERE IS NOT A MATVH IN THE EMPLOYE DEMOGRAPHICS ITLL JUSTT HAVE NULLS
	ON dem.employee_id = sal.employee_id;
    
#3.SELF JOIN(JOIN WHERE YOU JOIN THE TABLE TO ITSELF)
SELECT*
FROM employee_salary;

SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id;#will assign them in order
    
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id;# emp1 will keep in order but assigned to a +1of emp2
    
SELECT emp1.employee_id as emp_santa, 
emp1.first_name as santa_first_name,
emp1.last_name as santa_last_name, 
emp2.employee_id, 
emp2.first_name, 
emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id;

-- joning multiple tables
SELECT dem.employee_id,age,occupation
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;

SELECT *
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM parks_departments;#its a reference table

SELECT *
FROM employee_demographics as dem
INNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;

    
    










