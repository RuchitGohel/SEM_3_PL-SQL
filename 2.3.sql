/*
2.3 Write a PL/SQL block that uses a cursor attribute 
%ROWCOUNT to display the name, department and 
basic salary of the first 5 employees getting the 
highest basic salary. (Use Explicit Cursor) 
*/

DECLARE
  CURSOR emp_cursor IS
    SELECT ename, deptno, salary
    FROM emp
    ORDER BY salary DESC;

  emp_record emp_cursor%ROWTYPE;
BEGIN
  OPEN emp_cursor;
  LOOP
    FETCH emp_cursor INTO emp_record;
    EXIT WHEN emp_cursor%ROWCOUNT > 5 OR emp_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp_record.ename || ', Department: ' || emp_record.deptno || ', Basic Salary: ' || emp_record.salary);
  END LOOP;
  CLOSE emp_cursor;
END;
/