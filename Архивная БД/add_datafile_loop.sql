set serveroutput on;
declare 
i number;

Begin
FOR i IN 1..10

LOOP
   --dbms_output.put_line (q'[ALTER TABLESPACE USERS ADD DATAFILE '/db/sip_arch/db/users]' || to_char(i) || q'[.dbf' SIZE 100M AUTOEXTEND ON NEXT 1G MAXSIZE UNLIMITED;]');
   dbms_output.put_line (q'[ALTER TABLESPACE USERS ADD DATAFILE '+SIP_ARCH' SIZE 100M AUTOEXTEND ON NEXT 1G MAXSIZE UNLIMITED;]');
END LOOP;


end;
/
