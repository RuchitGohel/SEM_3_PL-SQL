--Write a pl/sql block to call the search_emp procedure.

set serveroutput on
declare
	vempno emp.empno%type;
	m_name emp.ename%type;
begin 
	search_emp(&vempno, m_name);
	dbms_output.put_line('The employee is-'||m_name||'for given employee no.');
exception
	when others then
	dbms_output.put_line(to_char(vempno)||'not found');
end;
/