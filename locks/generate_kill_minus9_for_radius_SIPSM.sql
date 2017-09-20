--select * from v$process
--select * from v$session
--desc v$process
--desc v$session

 --select a.sid, b.spid  from v$session a, v$process b where  a.machine like 'rad-smr-srv%' and a.paddr = b.addr;
 
 set pagesize 5000;
 select 'kill -9 '|| b.spid  from v$session a, v$process b where  a.machine like 'rad-smr-srv%' and a.paddr = b.addr;
 
 
 