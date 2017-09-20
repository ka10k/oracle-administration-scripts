select 
   sql.sql_text            sql_text,
   t.used_urec             Records, 
   t.used_ublk             Blocks, 
   (t.used_ublk*8192/2014) Kbytes 
from 
   v$transaction t, 
   v$session     s, 
   v$sql       sql
where 
   t.addr = s.taddr
and 
   s.sql_id = sql.sql_id;