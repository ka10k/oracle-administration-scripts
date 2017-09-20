--total size: datafiles,redo,temp,control
select * from dba_data_files;
select 
( select sum(bytes)/1024/1024/1024 data_file_size from dba_data_files ) +
( select nvl(sum(bytes),0)/1024/1024/1024 temp_file_size from dba_temp_files ) +
( select sum(bytes)/1024/1024/1024 redo_file_size from sys.v_$log ) +
( select sum(BLOCK_SIZE*FILE_SIZE_BLKS)/1024/1024/1024 controlfile_size from v$controlfile) "Total Size in GB"
from dual;


--Total,used,free
SELECT round(sum(a.bytes)/(1024*1024*1024),2) "Total Space (GB)",
     round(sum(b.bytes)/(1024*1024*1024),2) "Used Space (GB)",
     round(sum(c.bytes)/(1024*1024*1024),2) "Free Space (GB)"
FROM (SELECT tablespace_name tablespace_name,SUM(bytes) bytes
    FROM dba_data_files
    GROUP BY tablespace_name) a,
    (SELECT tablespace_name tablespace_name,SUM(bytes) bytes
    FROM dba_segments
    GROUP BY tablespace_name) b, 
    (SELECT tablespace_name tablespace_name,SUM(bytes) bytes
    FROM dba_free_space
    GROUP BY tablespace_name) c
WHERE a.tablespace_name = b.tablespace_name (+)
AND a.tablespace_name = c.tablespace_name;