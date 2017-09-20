--select * from dba_jobs_running;
select sql_handle, sql_text from dba_sql_plan_baselines --where sql_text like 'select  uss.uss_ab_id%';
            