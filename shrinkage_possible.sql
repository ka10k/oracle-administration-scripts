SELECT 
    file_name, 
    hwm, 
    blocks total_blocks, 
    (blocks - hwm + 1)*8/1024 shrinkage_possible_MB
FROM dba_data_files a,
    (
        SELECT 
            file_id, 
            MAX(block_id + blocks) hwm
        FROM dba_extents
        GROUP BY file_id 
    ) b
WHERE a.file_id = b.file_id
ORDER BY file_name;