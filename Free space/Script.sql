--SELECT * FROM DUC$
--SELECT * FROM DUAL
 SELECT m.tablespace_name, m.used_percent, (m.tablespace_size - m.used_space)*t.block_size/1024/1024 mb_free
 FROM  dba_tablespace_usage_metrics m, dba_tablespaces t, v$parameter p WHERE p.name='statistics_level' and p.value!='BASIC'
 AND t.contents NOT IN ('TEMPORARY', 'UNDO') AND t.tablespace_name = m.tablespace_name;
 
 --SELECT s.*, sq.SQL_TEXT FROM V$SESSION s, V$SQL sq WHERE sq.ADDRESS(+) = s.SQL_ADDRESS AND s.TYPE = 'USER';
 
 SELECT * FROM dba_tablespaces;