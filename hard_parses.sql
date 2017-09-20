select s.sid, s.value "Hard parses", t.value "Executions count", se.logon_time, se.username, se.osuser, se.client_info, se.terminal, se.machine, se.program

from v$sesstat s, v$sesstat t, v$session se

where s.sid = t.sid

and s.statistic# =

 (select statistic#

    from v$statname where name = 'parse count (hard)')

    and t.statistic#=(select statistic#

     from v$statname where name = 'execute count')

     and s.value >0

     and se.sid = s.sid

     order by 2 desc;