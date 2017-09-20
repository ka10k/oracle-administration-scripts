--ADD 99 DATAFILES
--alter system set db_files=2000 scope=spfile;
--show parameter files
--select count(*) from dba_data_files where tablespace_name='USERS';

set serveroutput on;
declare
i NUMBER := 0;
p varchar2 (500);
ex_custom EXCEPTION;
z exception;
PRAGMA EXCEPTION_INIT( ex_custom, -20001 );


BEGIN


LOOP 
    execute immediate q'[ALTER TABLESPACE USERS   ADD DATAFILE '+SIP_ARCH'   SIZE 100M   AUTOEXTEND ON   NEXT 1G   MAXSIZE UNLIMITED]';
    i := i + 1;
    dbms_output.put_line(i); 
    EXIT WHEN (i >= 100);    -- exit right after -11
END LOOP;


        exception
        when ex_custom then dbms_output.put_line( sqlerrm );
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
       

END;
/



