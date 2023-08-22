-- function

use demo2;
desc language;
delimiter //
drop function if exists lid;
create function lid(langid int)
returns varchar(20)
deterministic 
begin
	declare lname varchar(20);
	SELECT 
    name
INTO lname FROM
    language
WHERE
    id = langid;
	return lname;
end //
delimiter ;

SELECT LID(5);

-- student table => id,name(title case update or insert), email@gmail.com update or insert, phone address(title case update or insert)
