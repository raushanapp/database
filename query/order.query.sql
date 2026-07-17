* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

select * from "orders";
select  sum(netamount) as "Total Sum" from "orders" where  orderdate >= '2004-07-01'
 and  '2004-07-31' <= orderdate group by orderdate ,orderid;

select  sum(netamount) as "Total Sum" from "orders" where  orderdate >= '2004-07-01'
 and  '2004-07-31' <= orderdate ;


 /*
* DB: Store
* Table: orders
* Question: How many orders were made in January 2004?
*/

select * from "orders"
where date_trunc('month',orderdate) = date '2004-01-01';

select count(orderid) from "orders"
where date_trunc('month',orderdate) = date '2004-01-01';