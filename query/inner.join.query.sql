--  inner join 
-- 

select a.emp_no,concat(a.first_name, ' ', a.last_name) as full_name from "employees" as a inner join "salaries" as b on a.emp_no = b.emp_no;


select a.emp_no,concat(a.first_name,last_name) as "name",b.salary, c.title,c.from_date as "Promoted on" from "employees" as a
inner join salaries as b on a.emp_no = b.emp_no
inner join titles as c on c.emp_no = a.emp_no and c.from_date = (b.from_date + interval '2 days') order by a.emp_no;


-- when join employees what is salaries
-- inner  joins can become more complicated as you add more tables that you want to combine
select a.emp_no,concat(a.first_name,last_name) as "name",b.salary, c.title,c.from_date as "Promoted on" from "employees" as a
inner join salaries as b on a.emp_no = b.emp_no
inner join titles as c on c.emp_no = a.emp_no 
and (b.from_date = c.from_date 
or  (b.from_date + interval '2 days') = c.from_date )
order by a.emp_no asc, b.from_date  asc;