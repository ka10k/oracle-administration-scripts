--descr v$session

select p.SPID,s.SID,s.SERIAL#,s.STATUS from v$session s, v$process p where s.STATUS='KILLED' and s.SADDR=p.ADDR;
select count(*) from v$session where STATUS='KILLED';
--descr v$process

 
 
 set pagesize 5000;
 select 'kill -9 '|| b.spid  from v$session a, v$process b where  a.status='KILLED' and  a.paddr = b.addr;
 
 
 