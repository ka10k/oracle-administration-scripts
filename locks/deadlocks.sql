select 
   blocking_session,FINAL_BLOCKING_SESSION, -- FINAL_BLOCKING_SESSION -- ������ ����������
   sid, 
   serial#, 
   wait_class,
   seconds_in_wait
from 
   v$session
where 
   blocking_session is not NULL 
   --and sid=1796--(��� ���������)
   --and sid=2120--(��� ���������)
order by 
   blocking_session;
   
   --������ 2120 �����
   --blocking_session - ��, ��� ���������
   --1796 sorokina
   
   
   select 
   blocking_session, 
   count(sid)
from 
   v$session
where 
   blocking_session is not NULL 
   --and sid=391(��� ���������)
   group by blocking_session
order by 
   2 desc;