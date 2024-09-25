--write a function that returns the total number of employees in the emp table.

create or replace function total_emp
return number
is 
	total number(2):=0;
begin
	select count(*) into total from emp;
 	return total;
end;
/