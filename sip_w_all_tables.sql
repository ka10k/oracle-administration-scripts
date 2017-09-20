--select * from dict;
select owner,table_name,TABLESPACE_NAME,num_rows,blocks,last_analyzed,partitioned,buffer_pool from DBA_ALL_TABLES where owner='SIP_W';
--desc dba_all_tables