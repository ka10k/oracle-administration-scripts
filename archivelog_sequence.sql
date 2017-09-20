SELECT * FROM (
      SELECT sequence#, archived, applied,
             TO_CHAR(completion_time, 'RRRR/MM/DD HH24:MI') AS completed
       FROM sys.v$archived_log
       ORDER BY sequence# DESC)
    WHERE ROWNUM <= 10;
    
select * from sys.v$archived_log;