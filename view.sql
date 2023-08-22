-- view
-- view is commonlly known as virtual table,based on the result set of the sql statement 
-- a view is a database object which contain select statement 
-- the table reference in the views are known as base table
-- view do not store any data, the data are redrived at runtime from base table
-- mysql supports nested views. nested view is a view that is based on another view
-- mysql does not support materialized view. a masterialized view means where view itselt store data
-- advantages of views:
	
-- simplified query
-- data security with view 
-- DML operation with view

use sakila;
select * from actor;
create view actor1 as
select * from actor;

select * from actor1;

create view actorP as
select * from actor where first_name like "P%";
select * from actorP;

drop view actorP;

create view actorPandW as
select * from actor where first_name like "B%" and last_name like "N%";
select * from actorPandW;

update actorPandW 
set first_name ="Rehan"
where actor_id= 6;

create view actoridf as 
select actor_id as id, first_name as name from actor;

select * from actoridf;

create view actoridfq as 
select actor_id as id, first_name as name from actor where actor_id <=10;
select * from actoridfq;

desc actoridfq;

