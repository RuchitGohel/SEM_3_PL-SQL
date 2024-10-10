/*
5.6 - write a trigger to restrict user from using the table on sunday
*/

create or replace trigger TR_HOLIDAY
before insert or update or delete on EMP
for each row
begin
	if TRIM(TO_CHAR(SYSDATE,'Day'))='Sunday' then
	raise_application error(-20420,'You cannot access emp table on Sunday');
	end if;
end;
/