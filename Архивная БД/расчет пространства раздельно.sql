   
select sum(GB) from 
(   
SELECT segment_name, partition_name, owner, (bytes)/1024/1024/1024 Gb

   FROM dba_segments
   WHERE segment_type IN  ('TABLE PARTITION') AND segment_name IN ('TB_SERVICES','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_ARCHIVE') AND partition_name IN ('PART2016_05')
   );
   
   
   
select sum(GB) from 
(   
   SELECT segment_name, partition_name, owner, (bytes)/1024/1024/1024 Gb FROM dba_segments WHERE segment_type='INDEX PARTITION' AND PARTITION_NAME IN ('PART2016_05') AND segment_name IN 
(SELECT index_name FROM dba_indexes WHERE table_name IN ('TB_SERVICES','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_ARCHIVE'))
);