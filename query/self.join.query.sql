-- this usually  can be done when a table has  forgein key relationship it's primary key
-- we self join same employees table 

select a.id , a.first_name  as "Employee Name",
 b.first_name as "Supervisor Name",
 from "employees" as a 
where   a.supervisorId = b.id

