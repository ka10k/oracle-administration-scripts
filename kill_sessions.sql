SELECT s.inst_id,
       'ALTER SYSTEM KILL SESSION '''||s.sid||','||s.serial#||''' IMMEDIATE',
       'KILL -9 '||p.spid,
       s.username,
       s.program
FROM   gv$session s
       JOIN gv$process p ON p.addr = s.paddr AND p.inst_id = s.inst_id
WHERE  s.type != 'BACKGROUND'
