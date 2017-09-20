SELECT
p.pid,
s.SID,
s.SERIAL#,
p.spid,
s.USERNAME,
s.STATUS,
s.SERVER,
s.OSUSER,
s.PROCESS,
s.MACHINE,
s.PORT,
s.TERMINAL,
UPPER(s.PROGRAM) PROGRAM,
p.program  "OSProgram",
s.TYPE,
s.MODULE,
s.ACTION,
TO_CHAR(s.LOGON_TIME,'HH24:MI DD.MM.YYYY' ) LOGON_TIME,
s.BLOCKING_INSTANCE,
s.BLOCKING_SESSION,
s.SECONDS_IN_WAIT,
stat.cpu  - stat.CPU_this_call_start cpu_this_call,
stat.CPU,
stat.UGA_memory,
stat.PGA_memory,
stat.Commits,
stat.Rollbacks

FROM V$SESSION S, V$PROCESS p, 
     (select ss.sid stat_sid,
             sum(decode(sn.name, 'CPU used when call started', ss.value, 0)) CPU_this_call_start,
             sum(decode(sn.name, 'CPU used by this session', ss.value, 0)) CPU,
             sum(decode(sn.name, 'session uga memory', ss.value, 0)) uga_memory,
             sum(decode(sn.name, 'session pga memory', ss.value, 0)) pga_memory,
             sum(decode(sn.name, 'user commits', ss.value, 0)) commits,
             sum(decode(sn.name, 'user rollbacks', ss.value, 0)) rollbacks
      from   v$sesstat ss, v$statname sn
      where  ss.STATISTIC# = sn.STATISTIC#
      and    (sn.name = 'CPU used when call started' or
              sn.name = 'CPU used by this session' or
              sn.name = 'session uga memory' or
              sn.name = 'session pga memory' or
              sn.name = 'user commits' or
              sn.name = 'user rollbacks')
      group by ss.sid) stat
WHERE 1=1
and  p.addr(+) = s.paddr 
and  stat.stat_sid = s.sid
and s.MODULE like 'Premier%'
order by PGA_MEMORY desc;