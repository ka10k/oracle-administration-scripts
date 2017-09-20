/*
set pagesize 9999
set linesize 140
column username  format a10
column sid       format 9999
column serial#   format 99999
column actv      format a2
column sess_mi   format 9,999.9
column last      format 9,999.99
column TotGets   format 99,999.9999999999999999999999999
column phyRds    format 999,99999
column "KBSnt"   format 9,999,999
column "Trips/s" format 999
column "KbSnt/s" format 99,999
column Trips     format 99,999,999
column "B/trip"  format 9,999,999
column hit_rat   format 9,999
*/
SELECT a.username, a.sid, a.serial#,
       decode(a.status, 'ACTIVE', 'Y','INACTIVE', 'N') actv,
       (sysdate-logon_time)*24*60 sess_mi,
       a.last_call_et/60 "last",
       c.value/1024 "KBSnt",
       e.value "Trips",
       e.value / ((sysdate - logon_time)*24*60*60) "Trips/s",
       ((8*c.value/1024)/((sysdate - logon_time)*24*60*60)) "KbSnt/s",
--       c.value/e.value "B/trip",
       b.block_gets + b.consistent_gets TotGets,
       b.physical_reads phyRds,
       1-(physical_reads/(b.block_gets + b.consistent_gets)) hit_rat
FROM v$session a, v$sess_io b, v$sesstat c, v$statname d, v$sesstat e, v$statname f
WHERE a.sid = b.sid
AND a.sid = c.sid
AND c.statistic# = d.statistic#
AND d.name = 'bytes sent via SQL*Net to client'
AND a.sid = e.sid
AND e.statistic# = f.statistic#
AND f.name = 'SQL*Net roundtrips to/from client'
AND a.username is not null
AND (a.last_call_et < 3600 or a.status = 'ACTIVE')
AND sysdate - logon_time > 0
AND a.username != 'SYS'
AND (b.block_gets + b.consistent_gets) > 0
ORDER BY 8 desc
/