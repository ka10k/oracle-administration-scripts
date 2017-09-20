set serveroutput on;
declare 
i number;

Begin
FOR i IN 101..200

LOOP
   dbms_output.put_line (q'[ALTER TABLESPACE USERS ADD DATAFILE '/db/sip_arch/db/users]' || to_char(i) || q'[.dbf' SIZE 100M AUTOEXTEND ON NEXT 1G MAXSIZE UNLIMITED;]');
END LOOP;


end;
/
