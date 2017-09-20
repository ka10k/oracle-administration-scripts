--Вычисление объема данных таблиц и индексов для переноса в Архивную БД  за 05.2016

 SELECT
    (sum(bytes)/1024/1024/1024) Gb
   
FROM
(

SELECT segment_name, partition_name, owner, bytes

   FROM dba_segments
   WHERE segment_type IN  ('TABLE PARTITION') AND segment_name IN ('TB_SERVICES','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_ARCHIVE') AND partition_name IN ('PART2016_05')
   
union all   

SELECT segment_name, partition_name, owner, bytes FROM dba_segments WHERE segment_type='INDEX PARTITION' AND PARTITION_NAME IN ('PART2016_05') AND segment_name IN 
(SELECT index_name FROM dba_indexes WHERE table_name IN ('TB_SERVICES','TB_WTMPS_SESSION_CHARGES','TB_WTMPS_SESSIONS_ARCHIVE','TB_WTMPS_ARCHIVE'))

);   