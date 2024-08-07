/*
UNIT_2 : Program -3 : Write a PL/SQL block that user a cursor attribute %ROWCOUNT to display the name department 
and basic salary of the first 5 employees getting the highest basic salary.
(Use explicit cursor)
*/

--for loop display GENDER AND ENAME

declare

	cursor c1 is select ENAME, GENDER from EMP order by BASICSAL desc;
	
BEGIN
		
	for i in c1
	loop 
		exit when c1%rowcount>3;
		dbms_output.put_line('EMPLOYEE NAME IS'||' '||i.ENAME||' '||'GENDER OF EMPLOYEE'||' '||i.GENDER);
	END loop;
	
END;
/