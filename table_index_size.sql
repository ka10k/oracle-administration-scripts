--select * from SIP_W.CM_LOG_MESSAGES t
/*
select *
  from SIP_W.CM_LOG_MESSAGES
 where CMLM_ID = ( select max(CMLM_ID) from SIP_W.CM_LOG_MESSAGES )
 --401358847
 */
--select * from SIP_W.CM_LOG_MESSAGES where CMLM_ID <=( select max(CMLM_ID) from SIP_W.CM_LOG_MESSAGES ) and rownum<100 order by 1 desc

--CM_LOG_MESSAGES 34336ла Б 10-30
--Index TB_SERVICES 111061
--Table TB_SERVICES 110266
--Index TB_WTMPS_SESSION_CHARGES 84088
--Table TB_WTMPS_SESSION_CHARGES 69555

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
   WHERE owner in UPPER('SIP_W')
GROUP BY table_name, owner, "Type"
HAVING SUM(bytes)/1024/1024 > 10  
ORDER BY SUM(bytes) desc;
