--create and execute procedure inside pl/sql block to find maximum number out of three numbers

declare
	a number;
	b number;
	c number;
	d number;
	procedure findMax(x IN number, y IN number, z IN number, a OUT number) IS
begin
	if x>y and x>z then
		a:=x;
	elsif y>x and y>z then
		a:=y;
	else
		a:=z;
	end if;
  end;
begin

	a:=&a;
	b:=&b;
	c:=&c;
	findMax(a, b, c, d);
	dbms_output.put_line('Maximum value is'||d);
end;
/