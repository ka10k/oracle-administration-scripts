set serveroutput on;
set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);

declare
part varchar2(11);
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
i NUMBER := -36; --start sysdate - i
j NUMBER := -20; --end

--перенес PART2015_03 02 
BEGIN

dbms_output.put_line('Started at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));

--TB_SERVICES   
LOOP 
    SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY_MM') into part from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY-MM') into dttm_start from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i+1), 'YYYY-MM') into dttm_end from dual; --dttm_start + 1  
    dbms_output.put_line(part);
    dbms_output.put_line(dttm_start);
    dbms_output.put_line(dttm_end);         
    dbms_output.put_line(i);

--—татистику собирать не об€зательно
--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);


 i := i + 1;
     
    EXIT WHEN (i >= j);    -- exit right after --END SYSDATE - 13
    END LOOP;

END;
/
