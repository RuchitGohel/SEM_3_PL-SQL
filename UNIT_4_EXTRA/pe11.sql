--write a function that returns balance for given account number.


create or replace function bank(M_ACNO IN number)
return number
is
	M_BAL account.bal%type;
begin
	select bal into M_BAL from account where acno=M_ACNO;
	return M_BAL;
exception
	when NO_DATA_FOUND then
	return 0;
end;
/