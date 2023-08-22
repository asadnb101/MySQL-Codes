/* There are 4 types of stored precedure
	1]stored procedure
	2]stored function
	3]stored register
	4]stored event

Stored procedure :
=> A stored procedure is a sub routine available to application that access a relational database system
=> A stored procedure contains 1 or more sql statements stored in database
=> Stored procedure is also called as procedure 
=> We can use stored procedure parameters to pass 1 or more values from a calling program
=> There can be input(in) parameter as well as output(out) parameter, inout

-> Advantages of stored procedure:-
--> 1]Overhead
--> 2]Avoidance of network traffic
--> 3]Encapsulation of business logic 

delimiter :-   $$ , ## */

create database demo2;
use demo2;

create table language(
id int auto_increment,
name varchar(20),
primary key(id)
);

select * from language; 

insert into language(name) values("Marathi")

delimiter $$
create procedure  insertLang(lname varchar(20))
begin
insert into language(name) values(lname);
select last_insert_id();
end $$
delimiter ;

call insertLang("Urdu");
call insertLang("Hindi");
call insertLang("English");
call insertLang("German");

delimiter //
drop procedure if exists insertLang //
create procedure insertLang(in lname varchar (20), out langid int)
begin
insert into language(name) values(lname);
set langid = last_insert_id();
end //
delimiter ;

call insertLang("Urdu",@langId);
select * from  language where id = @langid;

call insertLang("Hindi",@langid);
call insertLang("English",@langid);

