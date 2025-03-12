#TEMP TABLES( Temporary Tables)are tables that are only visible to the session that created them. 
#are used to store intermediate results for complex queries or to manipulate data before inserting it into a permanent table.

# 2 ways to create temp tables:
#1.  is to build it exactly like a real table and insert data into it

CREATE TEMPORARY TABLE temp_table
(first_name varchar(50),
last_name varchar(50),
favorite_movie varchar(100)
);#this creates atable that we can query 

SELECT *
FROM temp_table;#it is blank

INSERT INTO temp_table
VALUES ('Alex','Freberg','Lord of the Rings: The Twin Towers');#run above code of select, it runs with these values

SELECT *
FROM temp_table;


#2. Build it by inserting data into it - easier and faster
CREATE TEMPORARY TABLE salary_over_50k
SELECT *
FROM employee_salary
WHERE salary > 50000;#wit this we get the desired output

SELECT *
FROM temp_table_2;

