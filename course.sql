create database vs;
use vs;

create table student(
sid int,
sname varchar(50) not null,
address varchar(50) not null,
phone varchar (12) unique not null,
last_update timestamp default current_timestamp on update current_timestamp,
primary key (sid)
);


create table course(
cid int not null,
cname varchar(20),
sid int not null,
fees int not null default 7500,
foreign key(sid) references student(sid)
);

insert into student(sid,sname,address,phone)values(1,"Asad","Nerul","9876543210"),
(2,"Mishaal","Vashi","0123456789"),
(3,"Saad","Almaty","4567891230");

insert into course(cid,cname,sid) values(1001,"Python",1),
(1002,"DBMS",1),
(1002,"Python",2);

select * from student;
select * from course;

-- inner join
select s.*,c.*
from student s
inner join course c on s.sid = c.sid
where s.sid = 1;

-- inner join
select s.*,c.*
from student s
inner join course c
/*
 create database with 2 table customer and product and perform inner join on it
*/



