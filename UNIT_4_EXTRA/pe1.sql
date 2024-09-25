--EX_1
--The following example creates a simple procedure that displays the string 'Hello world!' on the screen when 
-- executed.

create or replace procedure greetings as

begin
	dbms_output.put_line('Hello world!');
end;
/
