/*
2.5 - Write a PL/SQL block using a parameterized cursor
that displays the department wise basic salary of each
employee and department wise total gross salary.
(Parameterized Cursor and Use Cursor For Loop)
*/

declare

	cursor c1 is select DEPTNAME, avg(BASICSAL) as a, sum(BASICSAL) as s from EMP group by DEPTNAME;
begin
	for i in c1
	loop
		dbms_output.put_line(i.DEPTNAME||' '||i.a||' '||i.s);
	end loop;

END;
/