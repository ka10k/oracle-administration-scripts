--select count(*) from v$session;
--select * from v$session where username='SIP_IBS';

select username,count(process) cnt from v$session group by username order by cnt desc;
--select * from v$process;

--SELECT LOCAL_TRAN_ID, GLOBAL_TRAN_ID, STATE, MIXED, HOST, COMMIT#   FROM DBA_2PC_PENDING


set pagesize 2000;
select 'ALTER SYSTEM KILL SESSION ''' || sid ||','|| serial# || ''';' from v$session where username='SIP_IBS' and status='INACTIVE' and PROGRAM='oracle@sd5vp21-sm (TNS V1-V3)'

 