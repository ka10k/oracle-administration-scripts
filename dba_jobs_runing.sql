--select 'exec dbms_ijob.remove('||job||');' from dba_jobs_running;
select * from dba_jobs_running;