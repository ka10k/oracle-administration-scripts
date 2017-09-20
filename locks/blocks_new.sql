SELECT vs.username,
 vs.osuser,
 vh.sid locking_sid,
 vs.status status,
 vs.module module,
 vs.program program_holding,
 jrh.job_name,
 vsw.username,
 vsw.osuser,
 vw.sid waiter_sid,
 vsw.program program_waiting,
 jrw.job_name,
 'alter system kill session ' || ''''|| vh.sid || ',' || vs.serial# || ''';'  "Kill_Command"
FROM v$lock vh,
 v$lock vw,
 v$session vs,
 v$session vsw,
 dba_scheduler_running_jobs jrh,
 dba_scheduler_running_jobs jrw
WHERE     (vh.id1, vh.id2) IN (SELECT id1, id2
 FROM v$lock
 WHERE request = 0
 INTERSECT
 SELECT id1, id2
 FROM v$lock
 WHERE lmode = 0)
 AND vh.id1 = vw.id1
 AND vh.id2 = vw.id2
 AND vh.request = 0
 AND vw.lmode = 0
 AND vh.sid = vs.sid
 AND vw.sid = vsw.sid
 AND vh.sid = jrh.session_id(+)
 AND vw.sid = jrw.session_id(+)
 order by 3 desc;