select
   r.name roll_name,
   s.osuser || '/' || s.username userID,
   s.sid || '/' || s.serial# usercode,
   s.program program,
   s.status status,
   s.machine machine
from
   v$lock l,
   v$rollname r,
   v$session s
where
   s.sid = l.sid
and 
   trunc(l.id1(+)/65536) = r.usn
and
   l.type(+) = 'TX'
and
   l.lmode(+) = 6
order by 
   r.name;