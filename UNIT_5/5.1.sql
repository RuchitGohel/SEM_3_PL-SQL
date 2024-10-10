/*
5.1 - Write a trigger to insert the existing values of emp table into newemp table when the record
	of emp is updated.
*/

create or replace trigger TR_EMPUPDATE
before update of salary on EMP FOR EACH ROW

BEGIN

	INSERT INTO NEWEMP(EMPNO, EMP_NAME, SALARY)values
	(:OLD.EMP_ID, :OLD.ENAME, :OLD.SALARY);
END;
/