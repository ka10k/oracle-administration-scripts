select 
   blocking_session,FINAL_BLOCKING_SESSION, -- FINAL_BLOCKING_SESSION -- корень блокировки
   sid, 
   serial#, 
   wait_class,
   seconds_in_wait
from 
   v$session
where 
   blocking_session is not NULL 
   --and sid=1796--(кто блокирует)
   --and sid=2120--(кто блокирует)
order by 
   blocking_session;
   
   --рубить 2120 формс
   --blocking_session - те, кто блокирует
   --1796 sorokina
   
   
   select 
   blocking_session, 
   count(sid)
from 
   v$session
where 
   blocking_session is not NULL 
   --and sid=391(кто блокирует)
   group by blocking_session
order by 
   2 desc;