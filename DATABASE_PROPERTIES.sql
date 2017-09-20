--select s.schemaname,s.osuser,s.process,s.sid,s.serial#,s.status,p.pname,p.program,s.machine,s.terminal,s.type,TO_CHAR(s.logon_time,'DD-MM-YYYY HH24:MI:SS'),s.last_call_et,p.PGA_USED_MEM,p.PGA_ALLOC_MEM from v$session s,v$process p where s.paddr=p.addr and p.spid in (37466,37470,37474,37472,37464,3895,37096,32701,32707,32705);
--descr v$session
--descr v$process
select * from dict where table_name like '%TABLESPACE%';
--select * from dba_tablespaces;
--select * from dba_tablespace_groups;
--select * from user_tablespaces;
SELECT * FROM DATABASE_PROPERTIES