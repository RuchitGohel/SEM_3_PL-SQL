DECLARE

 CNO CUSTOMER_DETAIL.CUST_NO%type;
 CNM CUSTOMER_DETAIL.CUST_NAME%type;
 AD1 CUSTOMER_DETAIL.ADDRESS1%type;
 AD2 CUSTOMER_DETAIL.ADDRESS2%type;
 CT CUSTOMER_DETAIL.CITY%type;
 ST CUSTOMER_DETAIL.STATE%type;
 PNO CUSTOMER_DETAIL.PH_NO%type;

BEGIN

	select CUST_NAME,CITY,PH_NO from CUSTOMER_DETAIL where CUST_NO = CNO;
END
/