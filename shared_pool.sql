select 100-round(a.bytes/b.sm*100,2) pctused from 
(select bytes from v$sgastat where name='free memory' AND pool='shared pool') a,
(select sum(bytes) sm from v$sgastat where pool = 'shared pool') b;
--------------------
select * 
from(
   select 
      name, bytes/(1024*1024) MB 
   from 
      v$sgastat 
   where 
      pool ='shared pool' 
   order by 
      bytes desc
   ) 
where rownum < 20;
--------------------
select 
   count(1) num_sql, 
   sum(decode(executions, 1, 1, 0)) one_use_sql, 
   sum(sharable_mem)/1024/1024      meg_used, 
   sum(decode(
      executions,   1, 
      sharable_mem, 0)
   )/1024/1024                      mb_per
from 
   v$sqlarea
where 
   sharable_mem > 0;
---------------   
   select
   to_char(sn.end_interval_time,'dd Mon HH24:mi:ss') mydate,
   a.value enqueue_deadlocks
from
   dba_hist_sysstat a,
   dba_hist_snapshot sn

where
   sn.snap_id = (select max(snap_id) from dba_hist_snapshot)
   and a.snap_id = sn.snap_id
   and a.stat_name = 'enqueue deadlocks'
;
--------------------
--select * from v$sqlarea


