/*
parameterized cursor

*/

declare

	cursor c(no varchar2) is select * from CUSTOMER where CUST_NO=no;

begin

	for tmp in c('C1') loop
		dbms_output.put_line('CUSTOMER NO:'|| tmp.CUST_NO);
		dbms_output.put_line('CUSTOMER NAME:'|| tmp.CUST_NAME);
		dbms_output.put_line('CUSTOMER ADDRESS:'|| tmp.ADDRESS1);
		dbms_output.put_line('CUSTOMER CITY:'|| tmp.CITY);
		dbms_output.put_line('CUSTOMER STATE:'|| tmp.STATE);
		dbms_output.put_line('CUSTOMER PHONE NO:'|| tmp.PH_NO);
	end loop;
end;
/	