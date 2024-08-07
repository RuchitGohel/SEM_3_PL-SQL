/*
UNIT_2 : Program -3 : Write a PL/SQL block that user a cursor attribute %ROWCOUNT to display the name department 
and basic salary of the first 5 employees getting the highest basic salary.
(Use explicit cursor)
*/

--for loop

declare

	cursor c1 is select ENAME, DEPTNO, BASICSAL from EMP order by BASICSAL desc;
	
BEGIN
		
	for i in c1
	loop 
		exit when c1%rowcount>5;
		dbms_output.put_line(i.ENAME||' '||i.DEPTNO||' '||i.BASICSAL);
	END loop;
	
END;
/