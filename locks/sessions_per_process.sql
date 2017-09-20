

--select count(*),username  from v$session group by username order by 1 desc;

--select count(*) from v$session;
--select count(*) from v$process;


--desc v$session
--desc v$process


 select a.SID, a.SERIAL#, b.spid  from v$session a, v$process b
 where   a.paddr = b.addr;
 
 
 --кол-во сессий на процесс
 select count(a.SID) quantity,b.spid from v$session a, v$process b
 where b.addr=a.paddr group by b.spid order by quantity desc;
 --where a.paddr=b.addr group by b.spid order by quantity desc;