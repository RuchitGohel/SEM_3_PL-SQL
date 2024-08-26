/*
2.4 - Write a PL/SQL block using a cursor FOR loop to 
display the name and the basic salary of the top 3 
highest paid employees. (Use Cursor For Loop) 
*/

DECLARE
  CURSOR top_employees IS
    SELECT ename, salary
    FROM emp
    ORDER BY salary DESC
    FETCH FIRST 3 ROWS ONLY;
BEGIN
  FOR emp_record IN top_employees LOOP
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp_record.ename || ', Salary: ' || emp_record.salary);
  END LOOP;
END;
/