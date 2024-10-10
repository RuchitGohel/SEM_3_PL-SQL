/*
5.2 - write a trigger to insert the values into the NEWEMP table when the records are inserted 
	into the EMP table.
*/

set serveroutput on

CREATE OR REPLACE TRIGGER TR_EMPINSERT BEFORE INSERT ON EMP
FOR EACH ROW

BEGIN
	INSERT INTO NEWEMP(EMPNO, EMP_NAME, SALARY)VALUES
	(:NEW.EMP_ID, :NEW.ENAME, :NEW.SALARY);
END;
/