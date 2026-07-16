* DB: Store
* Table: orders
* Question: How many orders were made by customer 7888, 1082, 12808, 9623
*/

select count(orderid) as  "orderid","orderdate", "customerid" from "orders"
where orderid in (7888,1082,12808,9623) group  by orderid, customerid , orderdate;


/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

select * from "city";

select * from "city"
where district in ('Zuid-Holland', 'Noord-Brabant' , 'Utrecht');

select count(id) from "city"
where district in ('Zuid-Holland', 'Noord-Brabant' , 'Utrecht');