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

