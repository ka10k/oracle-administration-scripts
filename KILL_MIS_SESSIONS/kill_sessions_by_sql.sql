set serveroutput on;

BEGIN
for i in (
select sid psid, s.serial# serial  
FROM V$PROCESS p,
       V$SESSION s,
       V$SQLAREA sa
 WHERE p.addr=s.paddr
   AND s.username IS NOT NULL
   AND s.sql_address=sa.address(+)
   AND s.sql_hash_value=sa.hash_value(+)
   AND s.status = 'ACTIVE'
   and sa.sql_text like '%IBS_GETUSERSESSIONS$V"%'
   and s.program ='oracle@sd5vp31-nn (TNS V1-V3)'
 ORDER BY sid)
    loop
        begin
        execute immediate 'Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE';
        EXCEPTION  WHEN OTHERS THEN CONTINUE;
        end;
    end loop;
END;
 
 

 
 
/*

SELECT sa.sql_id,
       sa.sql_text                      txt,
       ''''||sid||', '||s.serial#||'''' sid_serial,
       pid,
       process                          client_pid,
       p.spid                           spid,
       blocking_session,
       BLOCKING_SESSION_STATUS,
       S.seconds_in_wait,
       s.program
  FROM V$PROCESS p,
       V$SESSION s,
       V$SQLAREA sa
 WHERE p.addr=s.paddr
   AND s.username IS NOT NULL
   AND s.sql_address=sa.address(+)
   AND s.sql_hash_value=sa.hash_value(+)
   AND s.status = 'ACTIVE'
   and sa.sql_text like '%IBS_GETUSERSESSIONS$V"%'
   and s.program ='oracle@sd5vp31-nn (TNS V1-V3)'
 ORDER BY sid;
 */