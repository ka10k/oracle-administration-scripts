select nvl(a.username, nvl((select p.name from v$bgprocess p where a.paddr = p.paddr), 'oracle')) username,
       a.osuser,
       a.status,
       a.logon_time,
       lpad(to_char(trunc(a.last_call_et/3600)),2,0)||':'||
       lpad(to_char(trunc(a.last_call_et/60)-(trunc(a.last_call_et/3600)*60)),2,0)||':'||
       lpad(to_char(a.last_call_et-(trunc(a.last_call_et/60)*60)),2,0) last_call,
       a.module,
       a.program,
       trunc(b.value/1024) mem_kb,
       nvl((select 'orakill ' || i.instance_name || ' ' || p.spid from v$instance i, v$process p where p.addr = a.paddr), '') as for_kill
from   v$session a,
       v$sesstat b,
       v$statname c
where  a.sid = b.sid
and    b.statistic# = c.statistic#
and    c.name = 'session pga memory'
union
select 'total', null, null, null, null, null, null, trunc(sum(b.value/1024)), null
from   v$session a,
       v$sesstat b,
       v$statname c
where  a.sid = b.sid
and    b.statistic# = c.statistic#
and    c.name = 'session pga memory'
order by 8 desc
