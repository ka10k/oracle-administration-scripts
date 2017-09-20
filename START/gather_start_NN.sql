set serveroutput on;
declare
postfix varchar2(6);
owner varchar2(50);
tablename varchar(50);
part varchar(50);

BEGIN

SELECT TO_CHAR(SYSDATE-1, 'YYYYMM') into postfix from dual;

dbms_output.put_line(postfix);



--Lock all partitioned tables, gather starts
/* 
for t in(  select distinct table_owner,table_name from dba_tab_partitions)
    loop
    select t.table_owner,t.table_name into owner,tablename from dual;
    DBMS_STATS.LOCK_TABLE_STATS (ownname=>t.table_owner ,tabname=>t.table_name);
    end loop;
*/
    
--Gather stats whole database
--DBMS_STATS.gather_database_stats(DEGREE => 8); 

--Unlock all partitioned tables
/*
for t in(  select distinct table_owner,table_name from dba_tab_partitions)
    loop
    select t.table_owner,t.table_name into owner,tablename from dual;
    DBMS_STATS.UNLOCK_TABLE_STATS (ownname=>t.table_owner ,tabname=>t.table_name);
    end loop;
*/


--Gather stats on partitioned tables format like%YYYYMM (%201507)
for t in(  select distinct table_owner,table_name,partition_name from dba_tab_partitions where partition_name like '%'||postfix and table_name not like 'BIN$%')
    loop
    DBMS_STATS.GATHER_TABLE_STATS(ownname => t.table_owner, tabname => t.table_name, partname => t.partition_name, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);
    end loop;


END;
/