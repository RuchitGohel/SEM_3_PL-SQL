create or replace procedure calc(a IN number, b IN number, c IN char, d OUT number)
IS

begin

	if c='+' then
		d:=a+b;
	elsif c='-' then
		d:=a-b;
	elsif c='*' then
		d:=a*b;
	elsif c='/' then
		d:=a/b;
	else 	
		d:=0;
	end if;
end;
/