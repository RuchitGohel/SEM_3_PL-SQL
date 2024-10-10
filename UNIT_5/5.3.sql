/*
5.3- Write a trigger to insert the values into NEWEMP table when the records are deleted from EMP
	table.
*/

set serveroutput on

create or replace trigger TR_EMPINSERT  before DELETE ON EMP
FOR EACH ROW

BEGIN
	INSERT INTO NEWEMP(EMPNO, ENMAE,SAL)values
	(:NEW.EMP_ID, :NEW.EMP_NAME, :NEW.SALARY);
END;
/