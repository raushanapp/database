
-- here combined the two tables


select a.emp_no, b.salary from "employees" as a, "salaries" as b where a.emp_no  = b.emp_no order by a.emp_no ;

select a.emp_no, b.salary, b.from_date  from "employees" as a, "salaries" as b where a.emp_no  = b.emp_no order by a.emp_no ;