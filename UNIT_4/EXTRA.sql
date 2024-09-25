CREATE OR REPLACE PROCEDURE MAXF(A IN NUMBER,B IN NUMBER) AS

BEGIN

	IF (A > B) THEN
		DBMS_OUTPUT.PUT_LINE('A IS GREATER');
	ELSE 
		DBMS_OUTPUT.PUT_LINE('B IS GREATER');
	END IF;
	
END;
/

-- OUTPUT 

-- SQL> @D:\7005\PLSQL\UNIT_IV\4_3.SQL

-- Procedure created.

-- SQL> EXECUTE MAXF(10,20);
-- B IS GREATER

-- PL/SQL procedure successfully completed.

-- SQL> EXECUTE MAXF(100,20);
-- A IS GREATER

-- PL/SQL procedure successfully completed.