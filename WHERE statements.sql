SELECT*
FROM employee_salary
WHERE first_name='Leslie';

SELECT*
FROM employee_salary
WHERE salary >= 50000;

SELECT*
FROM employee_demographics
WHERE gender='Female';

SELECT*
FROM employee_demographics
WHERE gender!='Female';

SELECT*
FROM employee_demographics
WHERE age>'1985-01-01'
AND gender='Female';

SELECT*
FROM employee_demographics
WHERE age>'1985-01-01'
AND gender='male';

SELECT*
FROM employee_demographics
WHERE age>'1985-01-01'
OR gender='male';

SELECT*
FROM employee_demographics
WHERE age>'1985-01-01'
OR NOT gender='male';

SELECT*
FROM employee_demographics
WHERE (first_name ='Leslie' AND age=44) OR age >55;
#PEMDAS IS FOLLOWED IN ABOVE EXECUTION

#LIKE STATEMEMNT it doesnt have to be an exact match but as long as it has that sequence,it works
SELECT*
FROM employee_demographics
#if we say where fisrt_name ='Jer';,we wont get an output ,but if you add LIKE then youll get jerry
#special caharacters%(maeans anything) and _(specific value)
WHERE FIRST_NAME LIKE 'Jer%';
#when 'Jer%' is used it gives anything starting with jer
#if '%er%' is used, it gives an outout of any name that has er in the middle
#if 'a__', itll give only any name that startes with an a and has two other alphabets ,like ann
# if '--n',itll give any name that has two alpahbets before it and a last alphabet as n
#if 'a__%', itll give any name that has a at the beginning any othr two alpabets and naything else after


SELECT *
FROM employee_demographics
WHERE first_name LIKE '1989%';

SELECT *
FROM employee_demographics
WHERE first_name LIKE '1989%';



