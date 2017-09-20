select   
   substr(a.os_user_name,1,15)   "OS User",
   substr(a.oracle_username,1,8) "DB User",
   substr(b.owner,1,8)           "Schema",
   substr(b.object_name,1,20)    "Object Name",
   substr(b.object_type,1,10)    "Type",
   substr(c.segment_name,1,15)   "RBS",
   substr(d.used_urec,1,12)      "# of Records",
   e.sid,
   e.serial#
from v$locked_object    a,
     dba_objects        b,
     dba_rollback_segs  c, 
     v$transaction      d,
     v$session e

where   
   a.object_id =  b.object_id
 and 
   a.xidusn    =  c.segment_id
and 
   a.xidusn    =  d.xidusn
and 
   a.xidslot   =  d.xidslot
and 
   d.addr      =  e.taddr;