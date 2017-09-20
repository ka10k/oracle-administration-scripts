  set feedback off
  set pages 999
  col tablespace_name format a40
  col "size MB" format 999,999,999
  col "free MB" format 99,999,999
  col "% Used" format 999
  select     tsu.tablespace_name, ceil(tsu.used_mb) "size MB"
  ,    decode(ceil(tsf.free_mb), NULL,0,ceil(tsf.free_mb)) "free MB"
  ,    decode(100 - ceil(tsf.free_mb/tsu.used_mb*100), NULL, 100,
         100 - ceil(tsf.free_mb/tsu.used_mb*100)) "% used"
  from    (select tablespace_name, sum(bytes)/1024/1024 used_mb
  from     dba_data_files group by tablespace_name union all
  select     tablespace_name || '  **TEMP**'
  ,    sum(bytes)/1024/1024 used_mb
  from     dba_temp_files group by tablespace_name) tsu
  ,    (select tablespace_name, sum(bytes)/1024/1024 free_mb
  from     dba_free_space group by tablespace_name) tsf
  where    tsu.tablespace_name = tsf.tablespace_name (+)
  order    by 4
/