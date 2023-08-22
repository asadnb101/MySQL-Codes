/*
Exception handling :
	=> An error condition during a program execution is called as exception
    => The mechanism for resolving such an exeception is exception handling
    => My sql Supports conditional handler
			1. Exit handler :
				-> Immediately exit the block
			2. Continue handler : 
				-> Stored procedure continue the handler
                -> It allow execution to continue in stored procedure
*/

-- exception
create database school2;
use school2;

create table class(
cid int primary key,
cname varchar (20)
);
desc class;

insert into class values(null,"Amir"); -- null 1048

insert into class values(1,"Amir");

insert into class values(1,"Amir"); -- duplicate 1062

delimiter //
drop procedure if exists add_error_handler //
create procedure add_error_handler(id int,name varchar (20))
begin
		declare flag int default 0;
		declare flag1 int default 0;
		begin
		declare exit handler for 1048 set flag=1;
		declare exit handler for 1062 set flag1=1;
		insert into class(cid,cname) values(id,name);
		select 'value added sucessfully';
		select * from class;
	end;
		if flag = 1 then
		select 'you are inserting null value' as message;
		elseif flag = 1 then
		select 'you are inserting duplicate value' as message;
    end if;
	end//
delimiter ;
select * from class;
call add_error_handler(3,"Rehan");