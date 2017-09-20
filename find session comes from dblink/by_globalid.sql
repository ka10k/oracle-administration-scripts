
with v$xt_global_transaction as (
   select
       g.inst_id                                                                       as inst_id
      ,g.k2gtdses                                                                      as saddr
      ,regexp_replace(g.k2gtitid_ora,'^(.*)\.(\w+)\.(\d+\.\d+\.\d+)$','\1')            as coordinator_db_name
--      ,regexp_replace(g.k2gtitid_ora,'^(.*)\.(\w+)\.(\d+\.\d+\.\d+)$','\2')            as remote_dbid_reversed
      ,to_number(hextoraw(reverse(regexp_replace(g.k2gtitid_ora,'^(.*)\.(\w+)\.(\d+\.\d+\.\d+)$','\2'))),'XXXXXXXXXXXX') as coordinator_dbid
      ,regexp_replace(g.k2gtitid_ora,'^(.*)\.(\w+)\.(\d+\.\d+\.\d+)$','\3')            as trans_id
      ,nvl2(replace(g.k2gtibid,'0'),'FROM REMOTE','TO REMOTE')                         as direction
      ,g.k2gtitid_ext  /* utl_raw.cast_to_varchar2(k2gtitid_ext) = g.k2gtitid_ora */   as globalid    
      ,g.k2gtitid_ora  /* utl_raw.cast_to_varchar2(k2gtitid_ext) = g.k2gtitid_ora */   as globalid_ora
      ,g.k2gtibid                                                                      as branchid
      ,g.k2gtecnt                                                                      as branches
      ,g.k2gterct                                                                      as refcount
      ,g.k2gtdpct                                                                      as preparecount
      ,g.k2gtifmt                                                                      as formatid
      , decode(bitand(g.k2gtdflg, 512) , 512 ,'[ORACLE COORDINATED]')
      ||decode(bitand(g.k2gtdflg,1024) ,1024 ,'[MULTINODE]')
      ||decode(bitand(g.k2gtdflg, 511)
                                       ,0    ,'ACTIVE'
                                       ,1    ,'COLLECTING'
                                       ,2    ,'FINALIZED'
                                       ,4    ,'FAILED'
                                       ,8    ,'RECOVERING'
                                       ,16   ,'UNASSOCIATED'
                                       ,32   ,'FORGOTTEN'
                                       ,64   ,'READY FOR RECOVERY'
                                       ,128  ,'NO-READONLY FAILED'
                                       ,256  ,'SIBLING INFO WRITTEN'
             )                                                                         as  state
       ,g.k2gtdflg                                                                     as flags
       ,DECODE(g.k2gtetyp
                 ,0 ,'FREE'
                 ,1 ,'LOOSELY COUPLED'
                 ,2 ,'TIGHTLY COUPLED')                                                as coupling
   from   x$k2gte2 g
         ,x$ktcxb t
         ,x$ksuse s
   where  g.k2gtdxcb = t.ktcxbxba
   and    g.k2gtdses = t.ktcxbses
   and    s.addr     = g.k2gtdses
)
select
    -- tr.inst_id
    s.sid,
    s.serial#,
    --,s.username
--    ,tr.saddr
    --,tr.coordinator_db_name
--    ,tr.remote_dbid_reversed
    --,tr.coordinator_dbid
   -- ,tr.trans_id
   -- ,tr.direction,
    tr.globalid
   -- ,tr.globalid_ora
   -- ,s.event
    --,s.wait_class
    --,tr.branchid
    --,tr.branches
   -- ,tr.refcount
   -- ,tr.preparecount
   -- ,tr.formatid
    --,tr.state
    --,tr.flags
    --,tr.coupling
from v$xt_global_transaction tr
    ,v$session s
where tr.saddr=s.saddr
  and tr.globalid = '57534D2E35333131383435652E31382E34302E31383532333231'