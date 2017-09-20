--truncate table sys.aud$;
--alter system set AUDIT_TRAIL=NONE scope=both;
--alter session set ddl_lock_timeout = 360;

--select count(*) from sys.aud$;

--truncate  table aud$;
--SELECT  * FROM DBA_PRIV_AUDIT_OPTS UNION SELECT * FROM DBA_STMT_AUDIT_OPTS

--BEGIN DBMS_AUDIT_MGMT.CLEAN_AUDIT_TRAIL(15, TRUE);  END;


--залоченные таблиицы
--SELECT B.Owner, B.Object_Name, A.Oracle_Username, A.OS_User_Name FROM V$Locked_Object A, All_Objects B WHERE A.Object_ID = B.Object_ID;


--какой SID лочит таблицу
column oracle_username format a15;
column os_user_name format a15;
column object_name format a37;
column object_type format a37;
select a.session_id,a.oracle_username, a.os_user_name, b.owner "OBJECT OWNER", b.object_name,b.object_type,a.locked_mode from 
(select object_id, SESSION_ID, ORACLE_USERNAME, OS_USER_NAME, LOCKED_MODE from v$locked_object) a, 
(select object_id, owner, object_name,object_type from dba_objects) b
where a.object_id=b.object_id;


select
   c.owner,
   c.object_name,
   c.object_type,
   b.sid,
   b.serial#,
   b.status,
   b.osuser,
   b.machine
from
   v$locked_object a ,
   v$session b,
   dba_objects c
where
   b.sid = a.session_id
and
   a.object_id = c.object_id;