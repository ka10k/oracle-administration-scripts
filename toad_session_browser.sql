SELECT  round(bitand(s.ownerid, 65535)) parent_session_sid, round(bitand(s.ownerid,16711680)/65536) parent_session_instid, rawtohex(SADDR) as saddr,s.SID, s.SERIAL#, s.AUDSID, rawtohex(PADDR) as paddr,s.USER#, s.USERNAME, s.COMMAND, s.OWNERID, s.TADDR, s.LOCKWAIT, s.STATUS, s.SERVER, s.SCHEMA#, s.SCHEMANAME, s.OSUSER, s.PROCESS, s.MACHINE, s.PORT, s.TERMINAL, UPPER(s.PROGRAM) PROGRAM, s.TYPE, s.SQL_ADDRESS, s.SQL_HASH_VALUE, s.SQL_ID, s.SQL_CHILD_NUMBER, s.SQL_EXEC_START, s.SQL_EXEC_ID, s.PREV_SQL_ADDR, s.PREV_HASH_VALUE, s.PREV_SQL_ID, s.PREV_CHILD_NUMBER, s.PREV_EXEC_START, s.PREV_EXEC_ID, s.PLSQL_ENTRY_OBJECT_ID, s.PLSQL_ENTRY_SUBPROGRAM_ID, s.PLSQL_OBJECT_ID, s.PLSQL_SUBPROGRAM_ID, s.MODULE, s.MODULE_HASH, s.ACTION, s.ACTION_HASH, s.CLIENT_INFO, s.FIXED_TABLE_SEQUENCE, s.ROW_WAIT_OBJ#, s.ROW_WAIT_FILE#, s.ROW_WAIT_BLOCK#, s.ROW_WAIT_ROW#, s.TOP_LEVEL_CALL#, s.LOGON_TIME, s.LAST_CALL_ET, s.PDML_ENABLED, s.FAILOVER_TYPE, s.FAILOVER_METHOD, s.FAILED_OVER, s.RESOURCE_CONSUMER_GROUP, s.PDML_STATUS, s.PDDL_STATUS, s.PQ_STATUS, s.CURRENT_QUEUE_DURATION, s.CLIENT_IDENTIFIER, s.BLOCKING_SESSION_STATUS, s.BLOCKING_INSTANCE, s.BLOCKING_SESSION, s.FINAL_BLOCKING_SESSION_STATUS, s.FINAL_BLOCKING_INSTANCE, s.FINAL_BLOCKING_SESSION, s.SEQ#, s.EVENT#, s.EVENT, s.P1TEXT, s.P1, s.P1RAW, s.P2TEXT, s.P2, s.P2RAW, s.P3TEXT, s.P3, s.P3RAW, s.WAIT_CLASS_ID, s.WAIT_CLASS#, s.WAIT_CLASS, s.WAIT_TIME, s.SECONDS_IN_WAIT, s.STATE, s.WAIT_TIME_MICRO, s.TIME_REMAINING_MICRO, s.TIME_SINCE_LAST_WAIT_MICRO, s.SERVICE_NAME, s.SQL_TRACE, s.SQL_TRACE_WAITS, s.SQL_TRACE_BINDS, s.SQL_TRACE_PLAN_STATS, s.SESSION_EDITION_ID, s.CREATOR_ADDR, s.CREATOR_SERIAL#, s.ECID, stat.cpu  - stat.CPU_this_call_start cpu_this_call, stat.CPU, stat.UGA_memory, stat.PGA_memory, stat.Commits, stat.Rollbacks, p.program  "OSProgram", p.spid, p.pid
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

/*
Select  lk.SID, se.username, se.OSUser, se.Machine, 
       DECODE (lk.TYPE, 'TX', 'Transaction', 'TM', 'DML', 'UL', 'PL/SQL User Lock', lk.TYPE) lock_type,
       DECODE (lk.lmode, 0, 'None', 1, 'Null', 2, 'Row-S (SS)', 3, 'Row-X (SX)', 4, 'Share', 5, 'S/Row-X (SSX)', 6, 'Exclusive', TO_CHAR (lk.lmode)) mode_held,
       DECODE (lk.request, 0, 'None', 1, 'Null', 2, 'Row-S (SS)', 3, 'Row-X (SX)', 4, 'Share', 5, 'S/Row-X (SSX)', 6, 'Exclusive', TO_CHAR (lk.request)) mode_requested,
       TO_CHAR (lk.id1) lock_id1, TO_CHAR (lk.id2) lock_id2, ob.owner,
       ob.object_type, ob.object_name, decode(lk.Block, 0, 'No', 1, 'Yes', 2, 'Global') block, se.lockwait
FROM   v$lock lk, dba_objects ob, v$session se
WHERE  lk.TYPE IN ('TX', 'TM', 'UL')
AND    lk.SID = se.SID
AND    lk.id1 = ob.object_id (+)
*/
