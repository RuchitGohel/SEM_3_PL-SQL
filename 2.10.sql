/*
2.10 Write a PL/SQL block to perform an update 
operation on the EMPLOYEE table using an implicit 
cursor. 

*/

BEGIN
    -- Update the salary of employees in the EMP table
    UPDATE EMP
    SET SALARY = SALARY * 1.10
    WHERE DEPTNO = 10;

    -- Check if the update was successful
    IF SQL%FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employees updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employees found in the specified department.');
    END IF;

    -- Display the number of rows updated
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' rows updated.');
END;
/
