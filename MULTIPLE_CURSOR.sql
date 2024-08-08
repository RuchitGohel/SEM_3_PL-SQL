/*
multiple cursor

*/

--one cursor is for finding dep wise salary
--second cursor is for finding average salary

declare
	e1 emp%rowtype;
	dno emp.deptname%type;
	salary emp.basicsal%type;

cursor c1(dn varchar) is select*from EMP where deptname=dn;
cursor c2(dn varchar) is select dept,avg(basicsal) from EMP group by deot having deptname=dn;

begin

	dbms_output.put_line('Department wise employee salary');
	open c1('HR');
loop
	fetch c1 into e1;
	exit when c1%notfound;
	dbms_output.put_line(e1.dept||' '||e1.basisal);
  	end loop;
	close c1;
	dbms_output.put_line('Department average salary');
	open c2(IT);
	loop
	fetch c2 into dno,salary;
	exit when c2%notfound;
	dbms_output.put_line(dno||':'||salary);
	end loop;
 	close c2;
end;
/