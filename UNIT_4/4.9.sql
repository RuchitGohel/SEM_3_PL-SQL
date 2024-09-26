create or replace function findMax(a IN number, b IN number, c IN number) 
return number
is
	d number;
begin
	if a>b and a>c then
		d:=a;
	elsif b>a and b>c then
		d:=b;
	else
		d:=c;
	end if;
	return d;
end;
/