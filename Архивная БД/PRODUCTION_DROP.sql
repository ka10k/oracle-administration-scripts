--Дропает партиции в продакшене, которые уже есть в архиве, совпадение по количеству записей

/*
--Сначала скрипт проверки на совпадения
select table_name,partition_name,num_rows from  dba_tab_partitions where table_name in ('TB_SERVICES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_ARCHIVE') and partition_name<>'PART_MAXVALUE'
INTERSECT
select * from  PART_VIEW@SIPARCH where table_name in ('TB_SERVICES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_ARCHIVE');
*/

SET SERVEROUTPUT ON

BEGIN
for i in
(select table_name,partition_name,num_rows from  dba_tab_partitions where table_name in ('TB_SERVICES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_ARCHIVE') and partition_name<>'PART_MAXVALUE'
INTERSECT
select * from  PART_VIEW@SIPARCH where table_name in ('TB_SERVICES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_ARCHIVE'))
loop
    begin
    --execute immediate 'ALTER TABLE SIP_W.'|| i.table_name || ' DROP PARTITION ' || i.partition_name;
    dbms_output.put_line('ALTER TABLE SIP_W.'|| i.table_name || ' DROP PARTITION ' || i.partition_name);
    EXCEPTION  WHEN OTHERS THEN CONTINUE;
    end;
end loop;
END;    



