create or replace function square(a in number)
return number
is
	sq number(2):=0;
begin
	sq:=a*a;
	return sq;
end;
/