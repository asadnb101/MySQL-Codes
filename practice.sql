use sakila;

select * from country where country_id = 1;

select * from actor where first_name like "%p";

select * from actor where first_name like "A_D%";
/*
Constraints:
primary key 
not null
unique

*/

create database practice;
use practice;

create table person(
id int auto_increment,
name varchar (20) not null,
phone varchar(20) unique,
age int,
last_update timestamp default current_timestamp on update current_timestamp,
primary key(id)
);

select * from person;
desc person;
drop table person;

insert into person(id,name,phone,age) values(default,"Rehan","9876543210",20);
insert into person values(default,"Asad","4576891230",20);

update person
set name= "mishaal"
where id = 1;

update person 
set age = 25
where name = "mishaal";

delete from person
where id = 2; 