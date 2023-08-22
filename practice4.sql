use sakila;
select * from customer;
select customer_id, first_name, last_name, email from customer;

create database asadlabs;
use asadlabs;

create database pseudo;
drop database pseudo;

create table student
(
	roll_no int,
    name varchar(80),
    age int,
    address varchar(100),
    city varchar(20),
    fees int
    );
drop table student;

insert into student values(1,"Saud",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(2,"Danish",20,"Bhendi Bazaar","Mumbai",67426);
insert into student values(3,"Aman",19,"Bhendi Bazaar","Mumbai",67426);
insert into student values(4,"Ayan",18,"Bhendi Bazaar","Mumbai",67426);
insert into student values(5,"Faraaz",21,"Bhendi Bazaar","Mumbai",67426);
insert into student(roll_no,name,age,fees) values(6,"Mehraan",19,67426);
insert into student values(7,"Rayyan",17,"","",67426);
insert into student(roll_no,name,age,fees) values(8,"Zaid",19,67426);

select * from student
where age = 19;

select age as student_name from student;
