SELECT STATUS,
       SID||':'||SERIAL#,
       OSUSER,
       TERMINAL,
       PROGRAM,
       SQL_ID
FROM V$SESSION
