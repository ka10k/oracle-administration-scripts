--select INDEX_NAME,INDEX_TYPE,TABLE_NAME,TABLE_TYPE,TABLESPACE_NAME,NUM_ROWS from dba_indexes where OWNER='SIP_W' and INDEX_NAME='RERATE_CHARGES';
--select * from dba_indexes where OWNER='SIP_W' and TABLE_NAME='TB_WTMPS_SESSION_CHARGES';


--ALTER INDEX SIP_W.RERATE_CHARGES REBUILD PARTITION PART2015_02 TABLESPACE INDX;
--alter index ITEM_IDX rebuild partition TEST_Q1_JAN tablespace PART1 parallel degree 3 nologging;



--Рабочая команд, можно делать online
--ALTER INDEX SIP_W.RERATE_CHARGES REBUILD PARTITION PART2015_03 TABLESPACE INDX parallel (degree 40) nologging;


--select * from dba_ind_partitions where INDEX_OWNER='SIP_W' and TABLESPACE_NAME='USERS' and STATUS='USABLE';

--Формирование скрипта
/*
set linesize 1000;
set pagesize 1000;
select 'ALTER INDEX SIP_W.' || INDEX_NAME || ' REBUILD PARTITION ' || PARTITION_NAME || ' TABLESPACE INDX parallel (degree 40) nologging;' from  dba_ind_partitions where INDEX_OWNER='SIP_W' and TABLESPACE_NAME='USERS' and STATUS='USABLE';
*/