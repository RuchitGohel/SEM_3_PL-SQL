--write a simple procedure without any parameter that updates the values in the EMP table.

create or replace procedure raise_sal
is 
begin
	update emp set salary=salary+salary*0.10;
end;
/