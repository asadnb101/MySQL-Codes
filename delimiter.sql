use sakila;
select * from actor;

delimiter $$
create procedure pa()
begin
select * from actor;
select * from country;
end$$
delimiter ;

call pa();
drop procedure pa;

delimiter $$
create procedure whileloop()
begin
declare i int default 1;
while i<6 do 
select (i);
set i = i+1;
end while;
end $$
delimiter ;

call whileloop();

delimiter $$
create procedure whileloop1()
begin
declare i int default 1;
while i<6 do 
select pow(2,i);
set i = i+1;
end while;
end $$
delimiter ;

call whileloop1();

delimiter $$
create procedure full_name(first_name varchar(20), last_name varchar(20))
begin
declare fulln varchar(40);
set fulln = concat (first_name," ",last_name);
select fulln;
end $$
delimiter ;
call full_name("Asad","Bubere");

delimiter $$
create procedure full_name2(first_name varchar(20), last_name varchar(20))
begin
select concat (first_name," ",last_name);
end $$
delimiter ;
call full_name2("Asad","Bubere");	