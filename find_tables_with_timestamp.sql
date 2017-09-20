Select t.table_name,t.owner, t.cluster_name,
        t.partitioned, t.iot_type, t.tablespace_name, t.last_analyzed, round(t.num_rows) num_rows
       , t.temporary, t.table_type, t.table_type_owner, t.nested 
       , decode(nvl(tablespace_name, 'x') || upper(partitioned) || nvl(iot_type, 'x') || to_char(pct_free), 'xNOx0', 'YES', 'NO') is_External
       , t.dropped
        , t.initial_extent
from sys.DBA_ALL_TABLES t
where 1=1
and t.owner = 'SIP_W'
and exists (Select 'x'

            from sys.DBA_TAB_COLUMNS c
            where c.owner = t.owner
            and c.table_name = t.table_name
              --and (c.data_type like 'TIMESTAMP%'))
              and (c.data_type like 'TIMESTAMP WITH TIME ZONE'))
order by table_name