create or replace procedure increasesal(vdept in emp.deptno%type, vper in number) as

begin

	update emp set basicsal = basicsal + basicsal * (vper/100) where deptno= vdept;

end;
/