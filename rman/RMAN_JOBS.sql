set linesize 300;
set pagesize 300;
column command_id format a20;
column operation format a30;
column status format a20;
column START_TIME format a30;
column END_TIME format a30;
column object_type format a20;
column output_device_type format a20;
select command_id,operation,status,TO_CHAR(start_time, 'DD.MON.YYYY HH24:MI:SS') start_time,TO_CHAR(end_time, 'DD-MON-YYYY HH24:MI:SS') end_time,object_type,output_device_type from V$RMAN_STATUS order by 1 desc;

select * from V$RMAN_STATUS;