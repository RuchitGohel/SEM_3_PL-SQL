/*
UNIT_2_PROGRAM_8

*/

declare

	cursor c1 is select ENAME, DEPTNO, AGE, BASICAL from EMP where ENAME like '_a%';

begin

	for i in c1
	loop 
	exit when c1%rowcount>3;
	dbms_output.put_line(i.ENAME||' '||i.DEPTNO||' '||i.AGE||' '||i.BASICSAL);
	end loop;

end'
/