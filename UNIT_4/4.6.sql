--4.6 create a procedure store addition of two numbers. Use IN and OUT parameters

create or replace procedure addition(a IN number, b IN number, c OUT number)
IS

BEGIN
	
	c:=a+b;
	dbms_output.put_line('Addition is'||c);

END;
/