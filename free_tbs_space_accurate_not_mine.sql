set lines 150;
select
a.tablespace_name,
a.bytes / 1024 / 1024 file_size,
(a.bytes - nvl(b.total_free,0)) /1024/1024 used,
nvl(b.total_free,0) / 1024 / 1024 total_free,
100 - (nvl(b.total_free,0) / a.bytes * 100) pct_full,
a.mb/1024/1024 Auto_extend,
(total_free + ab)/1024/1024 auto_free,
100 - ((nvl(b.total_free,0)+ decode(mb,0,0,ab)) / decode(a.mb,0,a.bytes,a.mb) * 100) autopct_full
from
(
select
tablespace_name,
sum(bytes) bytes,
sum(decode(maxbytes,0,bytes,greatest(maxbytes,bytes)))mb,
sum(decode(maxbytes,0,bytes,greatest(maxbytes,bytes))-bytes)ab
from
dba_data_files
group by tablespace_name
) a,
(
select tablespace_name,sum(bytes) total_free
from
(
select tablespace_name, bytes from dba_free_space
union
select distinct tablespace_name, 0 bytes from dba_tablespaces
)
group by tablespace_name
) b
where a.tablespace_name = b.tablespace_name
/