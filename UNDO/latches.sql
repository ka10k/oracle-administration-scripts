select * from dba_jobs_running;-- where job=807;
--807 1297
--549  лапин

--select name from V$latch where name like '%undo%';
--select name from V$latch_children where name like '%undo%';
--select ktifpno,ktifppsi from x$ktifp;
--select n.name, s.value from v$statname n, v$sesstat s  where n.statistic# = s.statistic#  and s.sid = (select sid from v$mystat where rownum = 1)  and n.name in ('IMU Flushes','IMU commits');
--select * from v$sgastat where name like 'KTI%';
--select b.name, a.value from v$sysstat a, v$statname b where a.statistic#=b.statistic# and b.name like '%IMU%';  