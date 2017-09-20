--Free Space on TBS
SET HEAD OFF TERM OFF FEED OFF VERIFY OFF
--COL pct_free FORMAT 999
SELECT (f.bytes/a.bytes)*100 pct_free,'% free',a.tablespace_name||','
FROM
(SELECT NVL(SUM(bytes),0) bytes, x.tablespace_name
FROM dba_free_space y, dba_tablespaces x
WHERE x.tablespace_name = y.tablespace_name(+)
AND x.contents != 'TEMPORARY' AND x.status != 'READ ONLY'
AND x.tablespace_name NOT LIKE 'UNDO%'
GROUP BY x.tablespace_name) f,
(SELECT SUM(bytes) bytes, tablespace_name FROM dba_data_files GROUP BY tablespace_name) a
WHERE a.tablespace_name = f.tablespace_name
AND (f.bytes/a.bytes)*100 <= 100
ORDER BY 1;