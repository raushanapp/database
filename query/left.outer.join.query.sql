left join or outer join or right oute join

select emp.emp_no, dep.emp_no from "employees" as emp
left join dept_manager as dep on emp.emp_no =dep.emp_no
where dep.emp_no  is not null;

-- count are't managers

select count(emp.emp_no) from "employees" as emp
left join dept_manager as dep on emp.emp_no =dep.emp_no
where dep.emp_no  is  null;


select a.emp_no, b.salary, coalesce(c.title, 'No title changes')  from "employees" as a
inner join salaries as b on b.emp_no = a.emp_no
left join titles as c on c.emp_no = a.emp_no 
and (c.from_date = b.from_date  or c.from_date = b.from_date +  interval '2 days') order by a.emp_no ;


select a.emp_no, concat(a.first_name, a.last_name) as "name",
b.salary,
coalesce(c.title, 'No title change'),
coalesce(c.from_date::text, '-') as "title taken on" from "employees" as a
inner join salaries as b on a.emp_no  = b.emp_no 
left join titles  as c 
on c.emp_no  = a.emp_no  and (
c.from_date  = (b.from_date + interval '2 days') or c.from_date = b.from_date)
order  by a.emp_no ;
