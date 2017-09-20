--select * from dba_tables where BUFFER_POOL='KEEP' order by num_rows desc
-- Tables + Size MB
--select owner, table_name, round((num_rows*avg_row_len)/(1024*1024)) MB 
--from all_tables 
--where owner='SIP_W'
--and num_rows > 0  -- Ignore empty Tables.
--order by MB desc -- Biggest first.;
----------------------------------------------------------------------
--Tables + Rows
--select owner, table_name, num_rows
 --from all_tables 
--where owner not like 'SYS%'  -- Exclude system tables.
--and num_rows > 0  -- Ignore empty Tables.
--order by num_rows desc -- Biggest first.;
-------------------------------------------------------------------------
/*
SELECT owner, table_name, ROUND(sum(bytes)/1024/1024/1024, 2) GB
    FROM
    (SELECT segment_name table_name, owner, bytes
     FROM dba_segments
     WHERE segment_type IN ('TABLE', 'TABLE PARTITION', 'TABLE SUBPARTITION')
     UNION ALL
     SELECT i.table_name, i.owner, s.bytes
     FROM dba_indexes i, dba_segments s
     WHERE s.segment_name = i.index_name
     AND   s.owner = i.owner
     AND   s.segment_type IN ('INDEX', 'INDEX PARTITION', 'INDEX SUBPARTITION')
     UNION ALL
     SELECT l.table_name, l.owner, s.bytes
     FROM dba_lobs l, dba_segments s
     WHERE s.segment_name = l.segment_name
     AND   s.owner = l.owner
     AND   s.segment_type = 'LOBSEGMENT'
     UNION ALL
     SELECT l.table_name, l.owner, s.bytes
     FROM dba_lobs l, dba_segments s
     WHERE s.segment_name = l.index_name
     AND   s.owner = l.owner
     AND   s.segment_type = 'LOBINDEX')
    WHERE owner in UPPER('&owner')
    GROUP BY table_name, owner
    HAVING SUM(bytes)/1024/1024 > 10 
    ORDER BY SUM(bytes) DESC;
    */
    -------------------------------------------------------------------------------
   
    SELECT
   owner, "Type", table_name "Name", TRUNC(sum(bytes)/1024/1024) Meg
FROM
(  SELECT segment_name table_name, owner, bytes, 'Table' as "Type"
   FROM dba_segments
   WHERE segment_type in  ('TABLE','TABLE PARTITION', 'TABLE SUBPARTITION')
 UNION ALL
   SELECT i.table_name, i.owner, s.bytes, 'Index' as "Type"
   FROM dba_indexes i, dba_segments s
   WHERE s.segment_name = i.index_name
   AND   s.owner = i.owner
   AND   s.segment_type in ('INDEX','INDEX PARTITION', 'INDEX SUBPARTITION')
 UNION ALL
   SELECT l.table_name, l.owner, s.bytes, 'LOB' as "Type"
   FROM dba_lobs l, dba_segments s
   WHERE s.segment_name = l.segment_name
   AND   s.owner = l.owner
   AND   s.segment_type IN ('LOBSEGMENT','LOB PARTITION')
 UNION ALL
   SELECT l.table_name, l.owner, s.bytes, 'LOB Index' as "Type"
   FROM dba_lobs l, dba_segments s
   WHERE s.segment_name = l.index_name
   AND   s.owner = l.owner
   AND   s.segment_type = 'LOBINDEX')
   WHERE owner in UPPER('&owner')
GROUP BY table_name, owner, "Type"
HAVING SUM(bytes)/1024/1024 > 10  
ORDER BY SUM(bytes) desc;

-------------------------------------------------------------------------------
--select * from dba_indexes where buffer_pool='KEEP' order by num_rows desc;

--select * from dba_jobs;
-- Individual values.


----------------SGA and PGA and MEMORY_TARGET-------------------------------
/*
COLUMN name FORMAT A30
COLUMN value FORMAT A10

SELECT name, value
FROM   v$parameter
WHERE  name IN ('pga_aggregate_target', 'sga_target')
UNION
SELECT 'maximum PGA allocated' AS name, TO_CHAR(value) AS value
FROM   v$pgastat
WHERE  name = 'maximum PGA allocated';

-- Calculate MEMORY_TARGET
SELECT sga.value + GREATEST(pga.value, max_pga.value) AS memory_target
FROM (SELECT TO_NUMBER(value) AS value FROM v$parameter WHERE name = 'sga_target') sga,
     (SELECT TO_NUMBER(value) AS value FROM v$parameter WHERE name = 'pga_aggregate_target') pga,
     (SELECT value FROM v$pgastat WHERE name = 'maximum PGA allocated') max_pga;
     */
     ------------------------------------------------------
     
---Размеры пулов, SGA and PGA--------------------
/*     
COLUMN component FORMAT A30

SELECT  component, current_size, min_size, max_size
FROM    v$memory_dynamic_components
WHERE   current_size != 0;
*/

--select * from dba_jobs
--select TRUNC(SYSDATE+1/2)+23/24 from dual;
     