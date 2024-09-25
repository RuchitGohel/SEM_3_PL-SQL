--Write a function that computes and returns the maximum of two values

create or replace function findmax(x IN number, y IN number)
return number
is 
	z number;
begin
	if x>y then
		z:=x;
	else
		z:=y;
	end if;
return z;
end;
/