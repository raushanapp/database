-- use case of distinct keyword when we are using this do not duplicate the data from data base

select distinct salary, *from "salaries";

select distinct salary, from_date , * from "salaries";



/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/


select distinct title  from "titles";

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

select distinct lifeexpectancy, * from "country"
where lifeexpectancy is not null;



select distinct lifeexpectancy, * from "country"
where lifeexpectancy is not null order by lifeexpectancy;
