SET LINESIZE 140
SET PAGESIZE 100
COL session      HEADING 'SID - User - Client' FORMAT a35
COL current_size HEADING 'Current MB' FORMAT '999,999.99'
COL maximum_size HEADING 'Max MB'     FORMAT '999,999.99'
BREAK ON REPORT
COMPUTE SUM LABEL 'Total' OF current_size ON REPORT
SELECT TO_CHAR(ssn.sid, '9999') || ' - ' || 
       NVL(ssn.username, NVL(bgp.name, 'background')) || ' - ' ||
       NVL(lower(ssn.machine), ins.host_name) "SESSION",
       TO_CHAR(prc.spid, '999999999') "PID/THREAD",
       se1.value/1024/1024 current_size,
       se2.value/1024/1024 maximum_size
 FROM  v$sesstat se1, 
       v$sesstat se2, 
       v$session ssn, 
       v$bgprocess bgp, 
       v$process prc,
       v$instance ins,  
       v$statname stat1, 
       v$statname stat2
 WHERE se1.statistic# = stat1.statistic# 
   AND stat1.name = 'session pga memory'
   AND se2.statistic# = stat2.statistic# 
   AND stat2.name = 'session pga memory max'
   AND se1.sid = ssn.sid
   AND se2.sid = ssn.sid
   AND ssn.paddr = bgp.paddr (+)
   AND ssn.paddr = prc.addr  (+)
-- AND NVL(ssn.username, NVL(bgp.name, 'background')) = '<SCHEMA>'
ORDER BY 4
/
