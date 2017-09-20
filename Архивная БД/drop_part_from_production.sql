
set serveroutput on;
declare
part varchar2(11);
dttm varchar2(19);
owner varchar2(50);
tablename varchar(50);
numrows number;
numrows_arch number;

BEGIN
   

--------------------- TB_SERVICES---------------------------------
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -14), 'YYYY_MM') into part from dual;  

--'TB_WTMPS_SESSIONS_ARCHIVE','TB_SERVICES','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_ARCHIVE

DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>6);

select num_rows into numrows from dba_tab_partitions where table_name='TB_SERVICES' and partition_name=part; --кол-во в текущей БД
select num_rows into numrows_arch from PART_VIEW@SIPARCH where table_name='TB_SERVICES' and partition_name=part; --кол-во в архивной бд

        
dbms_output.put_line('TB_SERVICES:'||part||' numrows='||TO_CHAR(numrows)||' numrows_arch='||TO_CHAR(numrows_arch));


IF numrows=numrows_arch THEN
    execute immediate 'alter session set ddl_lock_timeout= 60';
    execute immediate 'ALTER TABLE SIP_W.TB_SERVICES DROP PARTITION '|| part;
    ELSE dbms_output.put_line('нельзя удалять TB_SERVICES:'||part);
end IF;

----------------------------------------------------------------



-------- TB_WTMPS_SESSIONS_ARCHIVE--------------------------------
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -5), 'YYYY_MM') into part from dual;
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSIONS_ARCHIVE', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>6);
select num_rows into numrows from dba_tab_partitions where table_name='TB_WTMPS_SESSIONS_ARCHIVE' and partition_name=part; --кол-во в текущей БД
select num_rows into numrows_arch from PART_VIEW@SIPARCH where table_name='TB_WTMPS_SESSIONS_ARCHIVE' and partition_name=part; --кол-во в архивной бд
dbms_output.put_line('TB_WTMPS_SESSIONS_ARCHIVE:'||part||' numrows='||TO_CHAR(numrows)||' numrows_arch='||TO_CHAR(numrows_arch));

IF numrows=numrows_arch THEN
    execute immediate 'alter session set ddl_lock_timeout= 60';
    execute immediate 'ALTER TABLE SIP_W.TB_WTMPS_SESSIONS_ARCHIVE DROP PARTITION '|| part;
    ELSE dbms_output.put_line('нельзя удалять TB_WTMPS_SESSIONS_ARCHIVE:'||part);
end IF;
------------------------------------------------------------------------

--------------------------- TB_WTMPS_SESSION_CHARGES------------------------
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -5), 'YYYY_MM') into part from dual;
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSION_CHARGES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>6);
select num_rows into numrows from dba_tab_partitions where table_name='TB_WTMPS_SESSION_CHARGES' and partition_name=part; --кол-во в текущей БД
select num_rows into numrows_arch from PART_VIEW@SIPARCH where table_name='TB_WTMPS_SESSION_CHARGES' and partition_name=part; --кол-во в архивной бд
dbms_output.put_line('TB_WTMPS_SESSION_CHARGES:'||part||' numrows='||TO_CHAR(numrows)||' numrows_arch='||TO_CHAR(numrows_arch));

IF numrows=numrows_arch THEN
     execute immediate 'alter session set ddl_lock_timeout= 60';
     execute immediate 'ALTER TABLE SIP_W.TB_WTMPS_SESSION_CHARGES DROP PARTITION '|| part;
     ELSE dbms_output.put_line('нельзя удалять TB_WTMPS_SESSION_CHARGES:'|| part);
end IF;
----------------------------------------------------------------------------


-------------------------- TB_WTMPS_ARCHIVE----------------------------------
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -5), 'YYYY_MM') into part from dual;
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_ARCHIVE', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>6);
select num_rows into numrows from dba_tab_partitions where table_name='TB_WTMPS_ARCHIVE' and partition_name=part; --кол-во в текущей БД
select num_rows into numrows_arch from PART_VIEW@SIPARCH where table_name='TB_WTMPS_ARCHIVE' and partition_name=part; --кол-во в архивной бд
dbms_output.put_line('TB_WTMPS_ARCHIVE:'||part||' numrows='||TO_CHAR(numrows)||' numrows_arch='||TO_CHAR(numrows_arch));

IF numrows=numrows_arch THEN
    execute immediate 'alter session set ddl_lock_timeout= 60';
    execute immediate 'ALTER TABLE SIP_W.TB_WTMPS_ARCHIVE DROP PARTITION '|| part;
    ELSE dbms_output.put_line('нельзя удалять TB_WTMPS_ARCHIVE:'||part);
end IF;
----------------------------------------------------------------------------------



exception when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
commit;
end;
/
