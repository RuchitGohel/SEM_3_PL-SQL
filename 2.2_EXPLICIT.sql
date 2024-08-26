/*
2.2 - Write a PL/SQL block that uses a cursor attribute 
%ISOPEN and %NOTFOUND to raise the basic salary 
of employees of department number 20 by 5% and 
also display the appropriate message based on the 
existence of the record in the EMP table. Whenever 
any such raise is given to the employees, a record for 
the same is maintained in the emp_update table. 
(Perform using both Implicit and Explicit Cursor) 
*/

--using Explicit cursor

declare
	cursor c1 is select * from EMP where DEPTNO = 20;
	ENO EMP.EID%type;
	ENM EMP.ENAME%type;
	SAL EMP.SALARY%type;
	DNO EMP.DEPTNO%type;
 	G EMP.GENDER%type;
	AG EMP.AGE%type;
begin
	OPEN c1;
	IF c1%ISOPEN then
	
	LOOP
	FETCH c1 into ENO,ENM,SAL,DNO,G,AG;
	EXIT when c1%notfound;
	
	UPDATE EMP set SALARY = SALARY + SALARY * .05 where DEPTNO=20;
	insert into EMP_UPDATE values(ENO,ENM,SAL,DNO,G,AG);
	end LOOP;
	
	dbms_output.put_line(c1%ROWCOUNT || 'RECORD UPDATED');
	ELSE
	dbms_output.put_line('NO RECORDS FOUND');
	END IF;
	
	CLOSE c1;
end;
/