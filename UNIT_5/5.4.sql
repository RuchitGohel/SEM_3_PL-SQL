/*
5.4 - write a trigger for INSERT, UPDATE and DELETE operations in one program
*/

set serveroutput on

create or replace trigger TR_ALL
before
insert or update or delete on emp
for each row
begin
if inserting then
	insert into NEWEMP values(:NEW.EMP_ID, :NEW.EMP_NAME, :NEW.SALARY);
else
	insert into NEWEMP values(:OLD.EMP_ID, :OLD.EMP_NAME, :OLD.SALARY);
end;
/