-- joins
-- sql joins combine columns from two or more table into a single result set
-- mysql is a relational database and to have a relation we need more than one table 
-- Types of joins : 1] inner join 
-- 2] Outer Join : -left outer join -right outer join -full outer join 
-- 3] Cross join 
-- 4] Self join 
-- 5] Equil join
-- 6] Natural join 
-- Inner join returns when there is at least one match in both the tables. The common operator use in inner joint is "equal to" operator. 
-- Left outer join returns all the rows from the left table with matching rows from the right table 
--   if there are no columns matching int the right table it returns NULL value
-- Right outer join returns all the rows from the right table with matching rows from the left table 
--   if there are no columns matching int the left table it returns NULL value
-- full outer join combine left outer join and right outer join. this join returns rows from either table 
--   when the conditions are met and returns a NULL value when there is no match.
-- my sql does not support full outer join syntax
-- if you want to stimulate full outer join in mysql use left join and right join with union
-- left outer join '_'

-- left outer join
create database demo;
use demo;

truncate table1;
truncate table2;

create table table1(
id int not null,
value varchar(20) not null
);

create table table2(
id int not null,
value varchar(20) not null
);

insert into table1 (id,value) values (1,"First"),
(2,"Second"),
(3,"Third"),
(4,"Four"),
(5,"Five");

insert into table2 (id,value) values (1,"First"),
(2,"Second"),
(3,"Third"),
(6,"Sixth"),
(7,"Seventh"),
(8,"Eighth");

select t1.*,t2.*
from table1 t1
left join table2 t2 on t1.id=t2.id;

-- right join
select t1.*,t2.*
from table1 t1
right join table2 t2 on t1.id=t2.id;

-- full union
select t1.*,t2.*
from table1 t1
left join table2 t2 on t1.id=t2.id
union all
select t1.*,t2.*
from table1 t1
right join table2 t2 on t1.id=t2.id;

select * from table1
union all
select * from table2;

-- natural join
select t1.*,t2.*
from table1 t1
natural left join table2 t2;

-- cross join
select t1.*,t2.*
from table1 t1
cross join table2 t2 order by t1.id;

-- join wtih using keyword
select t1.*,t2.*
from table1 t1
inner join table2 t2 using(id);