//EXPLICIT CURSOR

declare
	cursor cl is select * from EMP where DEPTNO = 20;
	ENO EMP.EID%type;
	ENM EMP.ENAME%type;
	SAL EMP.BASICSAL%type;
	DNO EMP.DEPTNO%type;
 	G EMP.GENDER%type;
	AG EMP.AGE%type;
begin
	OPEN cl;
	IF cl%ISOPEN then
	LOOP
	FETCH cl into ENO,ENM,SAL,DNO,G,AG;
	EXIT when cl%notfound;
	UPDATE EMP set BASICSAL = BASICSAL + BASICSAL*.05 where DEPTNO=20;
	insert into EMP_UPDATE values(ENO,ENM,SAL,DNO,G,AG);
	end LOOP;
	dbms_output.put_line(cl%ROWCOUNT || 'RECORD UPDATED');
	ELSE
	dbms_output.put_line('NO RECORDS FOUND');
	END IF;
	CLOSE cl;
end;
/