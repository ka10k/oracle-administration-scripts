--#######################################################
--#Размер таблиц вместе с индексами размером более 1Гб--#
--#######################################################
set linesize 500;
set pagesize 500;
column Name format a30;
column owner format a10;
column space_alloc_GB format 999999;

 select * from (
 select owner, "Name", sum(Gb) as space_alloc_GB from
 (
 SELECT
   owner, "Type", table_name "Name", TRUNC(sum(bytes)/1024/1024/1024) Gb
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
   WHERE owner in ('SIP_W','SIP_IBS')
GROUP BY table_name, owner, "Type"
HAVING SUM(bytes)/1024/1024 > 10  
)
group by owner, "Name"
order by 3 desc)
where space_alloc_GB > 0;