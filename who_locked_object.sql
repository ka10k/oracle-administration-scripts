--объекты в определенном датафайле
select a.segment_name,a.file_id,b.file_name Datafile_name from dba_extents a,dba_data_files b where a.file_id=b.file_id and b.file_name='+SIPRM_DATA/startip/users04.dbf';

--заблокированные сессией обхекты 
SELECT d.OBJECT_ID, substr(OBJECT_NAME,1,20), l.SESSION_ID, l.ORACLE_USERNAME, l.LOCKED_MODE
from   v$locked_object l, dba_objects d
where  d.OBJECT_ID=l.OBJECT_ID;


--Shows Object Accessed for a Given Session ID
 SELECT a.object,
       a.type,
       a.sid,
       b.username,
       b.osuser,
       b.program
FROM   v$access a,
       v$session b
WHERE  a.sid   = b.sid
AND    a.owner = 'SIP_W'
AND    a.sid = 1923
ORDER BY a.object
/


--посмотреть кто держит пакет PROFILE_PKG

--descr dba_objects
--select * from dba_objects where object_type in ('PACKAGE BODY','PACKAGE') and object_name like '%PKG%'
--profile_pkg.check_profile;
--select OBJECT_ID from dba_objects where object_name like 'PROFILE_PKG';
--descr v$locked_object

select * from v$locked_object where OBJECT_ID in (select OBJECT_ID from dba_objects where object_name like 'PROFILE_PKG'); 