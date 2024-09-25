--Write a pl block that calls a total_emp function of example 7

set serveroutput on
declare
 	vno:=total_emp;
	dbms_output.put_line('Total no of records in emp table are:='||vno);
end;
/