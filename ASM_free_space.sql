--select * from dual@CREP_PUB.US.ORACLE.COM
--select * from dba_jobs
--select * from dba_scheduler_jobs
select name,round(total_mb/1024,2) as total_gb,round(free_mb/1024,2) as free_gb from v$asm_diskgroup;