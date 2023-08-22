/*
=> Triggers :
	Trigger are executed before or after DML operation.
    Trigger execution is often called as trigger firing
    Trigger must be created with for each row clause
    The old key word gets a value from the row that is being updated or deleted
    The new keyword gets a value from the row that is being inserted or updated
    
    => The  are 2 types of trigger :
		-> Before tigger  :
			Before tigger always execute before any DML operation.
            Mostly used in update and insert.
            
        -> After tigger :
			After tigger always execute after any DML operation
*/

use demo2;
select upper(substring("asad",1,4));
select lower(substring("ASAD",1,4));

-- aMAAN => Amaan

select concat(upper(substring("aMAAN",1,1)),"", lower(substring("aMAAN",2)));

truncate language;

delimiter //
create trigger before_insert
before insert on language
for each row
begin
	set new.name = concat(upper(substring(new.name,1,1)),"", lower(substring(new.name,2)));
end//
delimiter ;

insert into language(name) values("aMERIcan"),("JAPanese"),("rUSSian"),("CHinese"),("KOreaN");

select * from language;

delimiter //
create trigger before_update
before update on language
for each row
begin
	set new.name = concat(upper(substring(new.name,1,1)),"", lower(substring(new.name,2)));
end//
delimiter ;

update language
set name = "HiNdi"
where id = 4;