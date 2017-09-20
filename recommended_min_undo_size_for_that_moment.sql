--ALTER SYSTEM SET UNDO_RETENTION = 9000;

SELECT ((UR*(UPS*DBS))+(DBS*24))/1048576 AS "Recomended UNDO TBS SIZE in MB" FROM (SELECT value AS UR FROM v$parameter WHERE name='undo_retention'),
(SELECT (SUM(undoblks)/SUM(((end_time-begin_time)*86400))) AS UPS FROM v$undostat), 
(SELECT value AS DBS FROM v$parameter WHERE name='db_block_size');  