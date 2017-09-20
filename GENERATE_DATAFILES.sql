
set serveroutput on
DECLARE
fnum number(4) :=4;
fname varchar2(50);


BEGIN


FOR y IN 1..100   

       LOOP
       
       IF (y<10) THEN  fname:= '/db/sip_arch/db/users0' || y || '.dbf';
        ELSE  fname:= '/db/sip_arch/db/users' || y || '.dbf';
       END IF;
         
     
        DBMS_OUTPUT.PUT_LINE      ('ALTER TABLESPACE USERS ADD DATAFILE '''|| fname || ''' SIZE 1G AUTOEXTEND ON NEXT 1G MAXSIZE UNLIMITED;');
        --DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
     
     
        END LOOP;
END;
/
    
