--Write a simple precodure that increases the salary of employees for the fiven department no by percentage inputted
-- by the user using IN parameter.

create or replace procedure raise_sal2
(VDEPT IN EMP>DEPTNO%type, VPER IN NUMBER) IS
begin
	update emp set sal=sal+sal*(VPER/100) where deptno=VDEPT;
end;
/