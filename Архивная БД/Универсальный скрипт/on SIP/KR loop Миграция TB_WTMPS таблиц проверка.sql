set serveroutput on;
declare
part varchar2(12);
dttm varchar2(19);
owner varchar2(50);
tablename varchar(50);
cnt varchar2(50);
string varchar2(2000);
dttm_start varchar2(8);
dttm_end varchar2(8);
numrows_arch number;
ex_custom EXCEPTION;
z exception;
PRAGMA EXCEPTION_INIT( ex_custom, -20001 );
i NUMBER := -15; --start
j NUMBER := -4; --end

BEGIN
--надо закачать с 2015_01 по 2015_04 включительно


dbms_output.put_line('Started at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));

LOOP 
    SELECT 'PART_' || TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY_MM') into part from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY-MM') into dttm_start from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i+1), 'YYYY-MM') into dttm_end from dual; --dttm_start + 1  
    dbms_output.put_line(part);
    dbms_output.put_line(dttm_start);
    dbms_output.put_line(dttm_end);         
    dbms_output.put_line(i);
    i := i + 1;
     
    EXIT WHEN (i >= j);    -- exit right after -11
    END LOOP;




dbms_output.put_line('Ended at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));



        exception
        when ex_custom then dbms_output.put_line( sqlerrm );
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
       

END;
/
