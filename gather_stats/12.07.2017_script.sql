set serveroutput on;
declare
part varchar2(11);
dttm varchar2(19);
owner varchar2(50);
tablename varchar(50);

BEGIN

dbms_output.put_line('Started at: '||to_char(sysdate,'DD.MM.YYYY HH24:MI:SS'));
   
SELECT 'PART' || TO_CHAR(SYSDATE-1, 'YYYY_MM') into part from dual;


dbms_output.put_line('Not partitioned like PARTYYY_MM tables analyzing started: '||to_char(sysdate,'DD.MM.YYYY HH24:MI:SS'));

for t in(select owner,table_name from dba_tables where owner not in ('APEX_030200','APPQOSSYS','CTXSYS','DBSNMP','EXFSYS','MDSYS','OLAPSYS','ORDDATA','ORDSYS','OUTLN','OWBSYS','SYSTEM','SCOTT','WQ','XDB','SYSMAN','WMSYS','SYS') MINUS select distinct table_owner,table_name from dba_tab_partitions where partition_name like 'PART%' and TABLE_NAME not like 'BIN%')

    loop
    begin
    DBMS_STATS.GATHER_TABLE_STATS ( OwnName=>t.owner, TabName=>t.table_name, Estimate_Percent=>NULL,Method_Opt=>'FOR ALL COLUMNS SIZE 1',Degree=>8, Cascade=>TRUE, No_Invalidate=>FALSE);
    exception
    when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64) ||' '|| t.owner ||'.'||t.table_name);
    end;
    end loop;
    


dbms_output.put_line('Partitioned tables analyzing started: '||to_char(sysdate,'DD.MM.YYYY HH24:MI:SS'));

for t in(select distinct table_owner,table_name from dba_tab_partitions where partition_name like 'PART%' and TABLE_NAME not like 'BIN%')

    loop
    
    begin
    DBMS_STATS.GATHER_TABLE_STATS(ownname => t.table_owner, tabname => t.table_name, partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);
    DBMS_STATS.GATHER_TABLE_STATS(ownname => t.table_owner, tabname => t.table_name, partname => 'PART_MAXVALUE', cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
        exception
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64) ||' '|| t.table_owner ||'.'||t.table_name);
        
    end;   
    end loop;

-----index stats-----
dbms_output.put_line('Indexes analyzing started: '||to_char(sysdate,'DD.MM.YYYY HH24:MI:SS'));

for t in(select distinct index_owner,index_name from dba_ind_partitions where partition_name like 'PART%')

    loop
    
    begin
    DBMS_STATS.GATHER_INDEX_STATS(ownname => t.index_owner, indname => t.index_name, partname => part, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);
    DBMS_STATS.GATHER_INDEX_STATS(ownname => t.index_owner, indname => t.index_name, partname => 'PART_MAXVALUE', ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
        exception
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64) ||' '|| t.index_owner ||'.'||t.index_name);
        
    end;   
    end loop;
---------------------    
    
    

dbms_output.put_line('Ended at: '||to_char(sysdate,'DD.MM.YYYY HH24:MI:SS'));

END;
/
