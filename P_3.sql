/*
UNIT_2 : Program -3 : Write a PL/SQL block that user a cursor attribute %ROWCOUNT to display the name department 
and basic salary of the first 5 employees getting the highest basic salary.
*/

declare

	cursor c1 is select ENAME, DEPTNO, BASICSAL from EMP order by BASICSAL desc;
	EN EMP.ENAME%type;
	DNO EMP.DEPTNO%type;
	BSAL EMP.BASICSAL%type;


BEGIN

	open c1;
	loop
		exit when c1%notfound;
		exit when c1%rowcount>5;
		fetch c1 into EN,DNO,BSAL;
		dbms_output.put_line(EN);
		dbms_output.put_line(DNO);
		dbms_output.put_line(BSAL);
	END loop;
	close c1;
END;
/