-- filte the data from employees tables
--  SQL filter strcuture according how we write the sql filter query depending upon your query return data

-- select first_name, last_name  from "employees" where (first_name ='Georgi' and last_name ='Facello' and hire_date ='1986-06-26')or (first_name = 'Bezalel' and last_name ='Simmel') ;

-- Q1. How many female customers Do we have from the state of oregon (OR) and new york (NY)


select firstname, lastname,state,gender from "customers" where (state='OR' or state='NY') and (gender='F');
select count(firstname) from "customers" where (state='OR' or state='NY') and (gender='F');

-- WHAT IF
-- You want to filter on everything but ....? 
-- we can use another filter keyword called (! || NOT)

select firstname, lastname, gender from "customers" where not gender ='M';

-- Q HOW MANY CUSTOMERS AREN"T 55?

select  firstname, lastname, gender, age from "customers" where not age =55;

select  firstname, lastname, gender, age,count(age) from "customers" where  age =55;

-- remove the data from specific tables 
select  count(age) from "customers" where not  age =55;

-- comparison operators

-- who over the age of 44 has an income of 100000
/*
 * 10 > 20 false
 * 10 < 20 true
 * 10 <= 20  true
 * 10 >= 9 true
 * 0 = 0 true 
 * 1 != 0 true 
 * 
 */

-- How many female customers do we have from the state of Oregon (OR)

select  count(state)  from "customers"
where ( gender ='M') and (state= 'OR') ;

-- Who over the age of 44 has an income of 100 000 or more?
select firstname , lastname, age, gender, income from "customers"
where (age > 44) and (income = 100000);

-- Who between the ages of 30 and 50 has an income of less than 50 000?

select firstname , lastname, age, gender, income from "customers"
where (age >= 30 and age <= 50) and (income < 50000);

select firstname , lastname, age, gender, income from "customers"
where (age between 30 and  50) and (income < 50000);

-- What is the average income between the ages of 20 and 50?

select AVG(income) from "customers" where age between  20 and 50;


-- this short handing writing the sql query
select state , gender from "customers" where gender = 'F' and (state = 'OR' or state='NY');
-- this more

select state , gender from "customers" where gender = 'F' and state = 'OR'  or   gender = 'F' and state='NY';

"customers" where gender = 'F' and state = 'OR'  or   gender = 'F' and state='NY';
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/


select firstname, lastname,state,gender,income from "customers" where (age<30 or age >=50) and income > 50000;


select firstname, lastname,state,gender,income from "customers" where (age<30 or age >=50) and income > 50000 and (country='Japan' or country= 'Australia');


-- NUll value in column then adding some other text and here how  i am handling null value in data columns
select  coalesce(state, address2 ,'State is not  avilable in this' ,'Address not aviable') as "State","address2" from "customers" where (age<30 or age >=50) and income > 50000 and (country='Japan' or country= 'Australia') ;



--  THree Value logic handling about the null

select coalesce(address2, 'No Address') as "Adress2" from "customers" where address2  is null ;

select  coalesce(address1 , null) as "Address2"   from "customers" where  address1  is not  null;

select coalesce(lastName,'Empty')  from "customers" where (age is not null);

select coalesce(lastName,'Empty') as "AGE"  from "customers" where (age=  null);


-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

select * from "customers"
where age between  30 and 50;


-- What is the average income between the ages of 20 and 50? (Including 20 and 50)

select AVG(income) from "customers"
where age between  30 and 50;


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode have a 2 in it?.
* Expected output: 4211 
*/

select * from "customers"
where zip::text like '2%';


/*
* DB: Store
* Table: customers
* Question: How many people's zipcode start with 2 with the 3rd character being a 1.
* Expected output: 109 
*/

select * from "customers"
where zip::text like '2___3%';

/*
* DB: Store
* Table: customers
* Question: Which states have phone numbers starting with 302?
* Replace null values with "No State"                                                  
* Expected output: https://imgur.com/AVe6G4c
*/

select * from "customers"
where zip::text like '302%';

-- Logical Operators  (AND OR NOT)














