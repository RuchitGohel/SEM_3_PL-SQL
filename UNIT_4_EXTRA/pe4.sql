--Write a procedure that searches whether the given employee number is present or not in the table.

set serveroutput on
create or replace procedure search_emp
(vempno in number, vname out varchar2)
is
begin
select ename into vname from emp where empno=vempno;
exception
when others then
dbms_output.put_line(to_char(vempno)||'not found');
end;
/