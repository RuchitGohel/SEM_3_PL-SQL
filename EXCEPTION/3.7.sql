/*
3.7
*/

declare
	no number(5);

begin
 	select TO_NUMBER ('0001A') into NO form dual;
	dbms_output.put_line(NO);

exception

	WHEN INVALID_NUMBER then
	dbms_output.put_line('Wrong data type/data conversion.');

end;
/