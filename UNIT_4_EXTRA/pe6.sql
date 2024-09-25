--  write a procedure that shows the use of INOUT parameter.

create or replace procedure ps(no1 IN OUT NUMBER)
is
begin
 	no1:=no1*no1;
end;
/