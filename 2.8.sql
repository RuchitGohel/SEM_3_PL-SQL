/*
2.8 Write a PL/SQL block to display data with the use 
of LIKE Operator using cursor FOR Loop.
*/

DECLARE
  CURSOR emp_cursor IS
    SELECT ename, deptno
    FROM emp
    WHERE ename LIKE 'A%'; -- Change the pattern as needed

BEGIN
  FOR emp_record IN emp_cursor LOOP
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp_record.ename || ', Department: ' || emp_record.deptno);
  END LOOP;
END;
/
