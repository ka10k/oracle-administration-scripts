--select * from v$diag_alert_ext;
select distinct
       o.object_name,
       sh.username || '(' || sh.sid || ',' || sh.serial# || ')' Holder,
       sh.osuser,
       sw.username || '(' || sw.sid || ',' || sw.serial# || ')' Waiter,
decode(lh.lmode,
              1,'null',
              2,'row share',
              3,'row exclusive',
              4,'share',
              5,'share row exclusive',
              6,'exclusive') Lock_Type
from v$session   sw,
     v$lock      lw,
     all_objects o,
     v$session   sh,
     v$lock      lh
where lh.id1 = o.object_id
      and lh.id1 = lw.id1
      and sh.sid = lh.sid
      and sw.sid = lw.sid
      and sh.lockwait is null
      and sw.lockwait is not null
      and lh.type = 'TM'
      and lw.type = 'TM'