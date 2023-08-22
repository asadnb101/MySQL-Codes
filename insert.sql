use sakila;
select first_name, last_name, email from sakila.customer order by email asc;

create database university;
use university;
create table student(
id int auto_increment,
name varchar(50),
email varchar(30) unique,
phone varchar(20),
primary key(id)
);

CREATE TABLE student (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    email VARCHAR(30) UNIQUE,
    phone VARCHAR(20),
    PRIMARY KEY (id)
);

ALTER TABLE student AUTO_INCREMENT = 5;

select * from student;
drop table student;

insert into student value(default,"Asad", "asadbubere@gmail.com", "7021539108");
insert into student value(default,"Anas", "bubere@gmail.com", "7021539199");
insert into student value(default,"Aftab", "aftabbubere@gmail.com", "7021539177");
insert into student value(default,"Afzal", "bubere@gmail.com", "7021539555");
insert into student value(5,"adib", null, "7021539177");
insert into student value(default,"dfsg", "@gmail", null);

select * from student where phone is null;


alter table student modify name varchar(100);

-- delete coloum--

alter table student drop column address;

truncate student;
select * from student;
drop table student;