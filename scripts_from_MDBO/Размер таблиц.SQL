  SELECT t.table_name AS "Table Name", 
       t.num_rows AS "Rows", 
       t.avg_row_len AS "Avg Row Len", 
       Trunc((t.blocks * p.value)/1024) AS "Size KB", 
       t.last_analyzed AS "Last Analyzed"
FROM   dba_tables t,
       v$parameter p
WHERE t.owner = Decode('ILC', 'ALL', t.owner, 'ILC')
AND   p.name = 'db_block_size'
ORDER by t.table_name
