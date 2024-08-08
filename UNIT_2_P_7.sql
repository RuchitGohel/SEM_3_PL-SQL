/*
2.7 Write a PL/SQL block to display records from the
CUSTOMER table using an explicit cursor.
*/

declare 
	cursor c1 is select * from customer;
	rec customer%rowtype;

begin
	open c1;
	loop
		exit when c1%notfound;
		fetch c1 into rec;
		dbms_output.put_line(rec.cust_no||' '||rec.CUST_NAME||' '||rec.address1||' '||rec.city||' '||rec.state||' '||rec.ph_no);
	end loop;
	close c1;

end;
/