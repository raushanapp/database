-- Selecting Tables  first query here 

--  find the employees
 -- select * from "employees";
-- select * from "departments";
-- select * from "titles";


-- Renaming coloumns
-- Select Coloumn as <new name>
-- flitering column by name here

-- select emp_no as "employees #",birth_date as "Birthday",first_name as "First name"  from "employees";

-- COLUMN CONCATENATION
--- First name and last name 
-- select * from "titles";

--select concat(emp_no, 'is a ', title) as "Employees Title" from "titles";

-- Employees table I need to concat first name and last name of employees 
--select * from "employees";
-- select emp_no, concat(first_name , ' ',last_name) as "Full Name" from "employees";

-- these are example aggreate function
-- calling  count
--select count(emp_no) from "employees";
-- select max(emp_no) from "employees";
-- finding the highest salaries if employees
-- select * from "salaries";
 
-- highest amount salary for indiviual salaries available
-- Get the Hightest salaries available
-- select max(salary) from "salaries";

-- Get the Total amount of salaries paid
-- select  sum(salary) from "salaries";

-- What databse should i use for these exercieses
-- name of  Employees
-- select first_name , last_name from "employees";

-- this is a question : What is the average salary for the company

-- select * from "salaries"

-- select AVG(salary) from "salaries";

-- Q2. What year was the youngesr person bron in the company

 -- select * from "employees";

-- select max(birth_date,) from "employees";
-- select first_name and last_name to filter the name

-- select statement to filter Mayumi Schueler

select first_name,last_name from "employees"
-- filter on first name and last name to limit the amount of data returned
-- and focus  the filtering  oon a single person
where first_name= 'Mayumi'  and last_name= 'Schueller';  -- filter here on Mayuni Schueller

-- Common Select Mistakes  Example
-- select first_name; last_name from "users", this wrong written and  a correct way to 

-- double coats for tables and single coats for text

-- How to filter the Data 
-- Get female employees data from the employees tables

-- select first_name,gender   from "employees" where gender= 'F';

-- The "AND" KEYWORD AND "OR" Keyword
select * from "employees";

 

-- Question 2: What year was the youngest person born in the company?
-- Table: employees

select first_name , last_name , gender , MAX(birth_date)  from "employees" group by first_name , last_name ,gender ,birth_date ;
select  max(birth_date) from "employees";


select * from "employees"
where emp_no in (100001,100006,11008);
--where emp_no = 100001 or emp_no = 100006;