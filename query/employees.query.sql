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

/* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/

select * from "employees"
where first_name  like 'M%';



/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/

select * from "employees"
where first_name  like 'A%R';  -- this is not return any result in employees data do end with capital letter R character,so like is case sensitive
-- but when we ILIKE Keyword then it's work because ILIKE is  case insensitive 

select * from "employees"
where first_name  ilike 'A%R';

-- count the people start with A and end with R
select count(first_name) from "employees"
where first_name  ilike 'A%R';

/*
* DB: Employees
* Table: employees
* Question: Who is the oldest employee?
*/

select max(age(birth_date))s from "employees";



/*
* DB: Employees
* Table: employees
* Question: Get me all the employees above 60, use the appropriate date functions
*/

SELECT AGE(birth_date), * FROM "employees"
WHERE (extract(YEAR FROM AGE(birth_date)))
> 60 ;



/*
* DB: Employees
* Table: employees
* Question: How many employees where hired in February?
*/

select count(emp_no) from "employees"
where (extract(month from hire_date)) = 2 ;


/*
* DB: Employees
* Table: employees
* Question: How many employees were born in november?
*/

select * from "employees"
where (extract(month from birth_date)) = 11;

-- employees count in bord
select count(emp_no ) as "NUmber of employees" from "employees"
where (extract(month from birth_date )) = 11;



