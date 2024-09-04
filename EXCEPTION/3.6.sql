/*
3.6 cursor related exception
*/

declare
 	m_ename emp.emp_name%type;
	m_sal emp.salary%type;
	cursor c3 is select emp_name, salary from EMP;
begin
	open c3;
	loop
		fetch c3 into m_ename, m_sal;
		dbms_output.put_line(m_ename||' '  || m_sal);
	exit when c3%notfound;
	end loop;
	close c3;
exception
	when INVALID_CURSOR THEN
	dbms_output.put_line('Cursor error');
	when CURSOR_ALREADY_OPEN then
	dbms_output.put_line('Cursor is already open.');
	when others then
	dbms_output.put_line('some error occur.'||SQLERRM);
end;
/