/*
 create database with 2 table customer and product and perform inner join on it
*/

create database amazon;
use amazon;

create table customer(
cid int,
cname varchar (30),
address varchar (50),
phone varchar(15),
primary key (cid)
);


create table product(
pid int not null,
product_name varchar (20),
product_model varchar(40),
cid int not null,
product_price varchar(10),
foreign key(cid) references customer(cid)
);

insert into customer(cid,cname,address,phone) values(1,"Asad","Nerul","7021539108"),
(2,"Mishaal","Vashi","0123456789"),
(3,"Saad","Mumbai","9876543210");


insert into product(pid,product_name,product_model,product_price,cid) values (1001,"TV","Samsung","28,000",1),
(1002,"AC","LG","35,000",1),
(1003,"Mobile","Apple Iphone 12","60,000",2),
(1004,"Mobile","Samsung S22 Ultra","28,000",1);

select * from customer;
select * from product;

-- inner join
select c.*,p.*
from customer c
inner join product p on c.cid = p.cid
where c.cid = 1;

-- join wtih using keyword
select c.*,p.*
from customer c
inner join product p using(cid)
where c.cid=2;

