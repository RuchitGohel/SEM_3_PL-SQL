--Write a functin that returns the square of the given number.

create or replace function fsquare(no IN number)
return number
is 
begin
	return  no*no;
end;
/