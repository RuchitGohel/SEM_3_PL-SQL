/*
UNIT_2 : Program -3 : Write a PL/SQL block that user a cursor attribute %ROWCOUNT to display the name department 
and basic salary of the first 5 employees getting the highest basic salary.
(Use explicit cursor)
*/

--for loop display all information of employees

declare

	cursor c1 is select E_ID, ENAME, DEPTNO, DEPTNAME, GENDER, AGE, BASICSAL
	from EMP order by BASICSAL desc;
	
BEGIN
		
	for i in c1
	loop 
		exit when c1%rowcount>3;
		dbms_output.put_line(i.E_ID||' '||i.ENAME||' '||i.DEPTNO||' '||i.DEPTNAME||' '||i.GENDER||' '||i.AGE||' '||i.BASICSAL);
	END loop;
	
END;
/