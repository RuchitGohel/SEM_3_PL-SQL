/*
2.1 Write a PL/SQL block that uses a cursor attribute 
SQL%ROWCOUNT to raise the basic salary of 
employees by 10% that are working in department 
number 10 and also display the appropriate message 
based on the existence of the record in the EMP table. 
(Use Implicit Cursor) 
*/

declare

	v_emp_count NUMBER;

begin

	--update the salary of employees in department 10
	update emp set salary = salary * 1.10 where deptno=10;
		
	v_emp_count:=sql%rowcount;

	if v_emp_count > 0 then
	dbms_output.put_line(v_emp_count ||' ' || 'employee salary has been increased by 10%.');
	else
	dbms_output.put_line('No employee found.');
	end if;	

end;
/	