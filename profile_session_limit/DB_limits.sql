select username,count(*)
from v$session          
group by username;      
select *
from v$resource_limit
where resource_name in ('processes','sessions');