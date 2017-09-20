--select * from dba_db_links
--select * from dual@ALR;
/* Formatted on 18.07.2015 20:29:07 (QP5 v5.252.13127.32867) */
  SELECT s.machine,
         s.program AS s_program,
         s.username,
         p.program AS p_program,
         COUNT (1) AS sess_count
    FROM v$process p, v$session s
   WHERE p.addr = s.paddr
GROUP BY s.machine,
         s.program,
         p.program,
         s.username
ORDER BY sess_count DESC