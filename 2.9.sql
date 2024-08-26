/*
2.9  Write a PL/SQL block to show the records using 
ORDER BY clause using cursor.
*/

 DECLARE
  -- Declare the cursor
  CURSOR emp_cursor IS
    SELECT eid, salary
    FROM emp
    ORDER BY salary DESC;  -- Order by salary in descending order

  -- Declare variables to hold the fetched data
  employee_id emp.eid%TYPE;
  sal emp.salary%TYPE;
BEGIN
  -- Open the cursor
  OPEN emp_cursor;

  -- Fetch each row from the cursor
  LOOP
    FETCH emp_cursor INTO employee_id, sal;
    EXIT WHEN emp_cursor%NOTFOUND;

    -- Display the fetched data
    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || employee_id || ', Salary: ' || sal);
  END LOOP;

  -- Close the cursor
  CLOSE emp_cursor;
END;
/

