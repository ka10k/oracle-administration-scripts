SELECT DISTINCT s.sid, s.serial#, s.schemaname, s.osuser, s.program, t.start_time,  
       t.used_ublk, r.name rollback_segment_name, 
       st.sql_text, st_prev.sql_text prev_sql_text, s.event
FROM v$session s, v$transaction t, v$rollname r, v$sql st, v$sql st_prev
WHERE 
    t.addr = s.taddr AND
    t.USED_UBLK > 0 AND 
    t.xidusn = r.usn AND
    st.SQL_ID(+) = s.SQL_ID AND
    st_prev.SQL_ID(+) = s.SQL_ID
ORDER BY t.USED_UBLK DESC;