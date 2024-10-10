/*
5.5 - Write a trigger which restrict the user from withdrawl operation if the balance
	amount agter withdrawl operation is less than rs.1000. use when clause
*/

create or replace tigger TR_BAL
before INSERT or UPDATE OF salary on EMP
FOR EACH ROW
when(NEW.SALARY<30000)
begin
	RAISE_APPLICATION_ERROR(-20650, 'Minimum salary for employee is rs.30000');
END;
/