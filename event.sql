/*Stored programs:
Events :
	=> An event is a block of code that is executed automatically according to scheduler.
    => Mysql supports one time event as well as recurring event.
    => The primary reason to use events to do various maintanance task realted to table.
*/

-- event
use demo;
show variables where variable_name= "event_scheduler";

set global event_scheduler = on;

drop table eventAudit;
create table eventAudit(
id int primary key auto_increment,
message varchar(50),
lastupdate timestamp default current_timestamp
);

select current_timestamp();  -- currrent time and date
select now();

select * from eventAudit;

-- one time events without preserving after completion

delimiter // 
create event message
on schedule at now() + interval 10 second
do begin
	insert into eventAudit(message, lastupdate) values ("Testing......", now());
end //
delimiter ;

show events from demo;

/* recurring event */
delimiter // 
create event message
on schedule at now() + interval 10 second
on completion preserve
do begin
	insert into eventAudit(message, lastupdate) values ("Testing......", now());
end //
delimiter ;

drop event message;
truncate eventAudit;

delimiter //
create event recurr
on schedule every 10 second
starts now()
do begin
	insert into eventAudit(message, lastupdate) values ("Testing......", now());
end //
delimiter ;
select * from eventAudit;
truncate eventAudit;
show events in demo;
drop event recurr;

