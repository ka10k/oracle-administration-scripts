set linesize 2000;
select 'AUDIT ' || LISTAGG(name, ',') WITHIN GROUP (ORDER BY 1) || ' BY CH_GUSAROV BY ACCESS' AS names   from STMT_AUDIT_OPTION_MAP where name in (select PRIVILEGE from (
--select 'AUDIT ' || LISTAGG(name, ',') WITHIN GROUP (ORDER BY 1) || ' BY PSANNIKOV BY SESSION' AS names   from STMT_AUDIT_OPTION_MAP where name in (select PRIVILEGE from (

with tbbeg as (

select 'CH_GUSAROV' usr from dual
)
, tbrep (usr, gr, r) as (
  select usr, granted_role gr, 1 r from DBA_ROLE_PRIVS, tbbeg where grantee = usr and granted_role !='DBA'
  UNION ALL
  select usr, dr.granted_role gr, r+1 r
  from tbrep t, DBA_ROLE_PRIVS dr
  where t.gr = dr.grantee and dr.granted_role !='DBA'
)
, tbGrantNoDBA as (
select r.usr, s.privilege, count(distinct privilege) over () co
from tbrep r
left join DBA_SYS_PRIVS s on r.gr = s.grantee
)
select t.usr, d.privilege
from tbbeg t, sys.DBA_SYS_PRIVS d
where d.grantee = 'DBA' and not exists (select null from tbGrantNoDBA where usr = t.usr and privilege = d.privilege)
))
