create or replace procedure maximum (a in number, b in number) as

begin
	if(a > b) then
		dbms_output.put_line(a||'is greater than'||b);
  	else
		dbms_output.put_line(b||'is greater than'||a);
 	end if;
end;
/