-- case statements(allows you to add logic in your select stetement)
SELECT * 
FROM employee_demographics;

SELECT first_name, last_name,age,
CASE
	WHEN age <= 30 THEN 'Young'
END
FROM employee_demographics;


SELECT first_name, last_name,age,
CASE
	WHEN age <= 30 THEN 'Young'
    WHEN age BETWEEN 31 and 50 THEN 'OLD'
    WHEN age >=50 THEN 'VERY OLD'
END AS Age_bracket
FROM employee_demographics;

SELECT *
FROM employee_salary;

-- A Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 50000 then they get a 5% raise 
-- if they make more than 50000 they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department
SELECT first_name,last_name,salary,
CASE
WHEN salary<50000 THEN salary+(salary*0.05)
END as lessthan50kRAISE
FROM employee_salary;

SELECT first_name,last_name,salary,
CASE
WHEN salary<50000 THEN salary+(salary*0.05)
WHEN salary>50000 THEN salary+(salary*0.07)
END as lessmorethan50kRAISE
FROM employee_salary;

SELECT first_name,last_name,salary,
CASE
WHEN salary<50000 THEN salary+(salary*0.05)
WHEN salary>50000 THEN salary+(salary*0.07)
END as lessmorethan50kRAISE
FROM employee_salary;

SELECT*
FROM employee_salary;
SELECT*
FROM parks_departments;#using these two tables you fnf that only id no.6 is in finance


SELECT first_name, last_name, salary,
CASE
	WHEN salary > 45000 THEN salary + (salary * 0.05)
    WHEN salary < 45000 THEN salary + (salary * 0.07)
END AS new_salary,
CASE
	WHEN dept_id = 6 THEN salary * .10
END AS Bonus
FROM employee_salary;




