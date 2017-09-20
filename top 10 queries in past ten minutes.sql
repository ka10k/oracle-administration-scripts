select * from
(select nvl(sql_id,'null') as sql_id,
sum(1) as "dbtime in seconds"
from v$active_session_history
where sample_time > sysdate -10/(24*60)
group by sql_id
order by 2 desc)
where rownum < 11;