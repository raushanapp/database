-- create  table "cartesianA" (id INT);
-- create  table "cartesianB" (id INT);

insert into "cartesianA" values(1);
insert into "cartesianA" values(2);
insert into "cartesianA" values(3);

 insert into "cartesianB" values(1);
insert into "cartesianB" values(2);


--  crros join 
select * from "cartesianA"
cross join "cartesianB";

-- full join 

select * from "cartesianA" as a
full join "cartesianB" as b on a.id = b.id;
