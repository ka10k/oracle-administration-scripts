/* 
   eventmetric.sql - sqlplus script - displays significant event metrics
   By Luca Jan 2011 
*/
select "Time+Delta",inst_id,name, round(T_waited/100,1) "T_wait_sec", W_count "W_count", T_per_wait*10 "T_per_wait_ms"
from (
 select to_char(min(begin_time),'hh24:mi:ss')||' /'||round(avg(intsize_csec/100),0)||'s' "Time+Delta",
       em.inst_id,en.name,sum(em.time_waited) T_waited,sum(wait_count) W_count, sum(decode(em.wait_count, 0,0,round(em.time_waited/em.wait_count,2))) T_per_wait
 from gv$eventmetric em, v$event_name en
 where em.event#=en.event#
      and en.wait_class <>'Idle'
 group by em.inst_id,en.name,em.event_id
 order by T_waited desc
) where rownum<=20