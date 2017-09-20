--select * from all_tab_privs_recd;-- where grantee = 'SIP_W';

--SELECT PRV_ID FROM SIP_W.PROVIDERS START WITH PRV_ID = SIP_W.ACSCONTROL.GET_EFFECTIVE_PRV_ID CONNECT BY PRIOR PRV_PRV_ID = PRV_ID
--select * from SIP_W.ACS_SESSION_OBJECTS_LOG where rownum<100;

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