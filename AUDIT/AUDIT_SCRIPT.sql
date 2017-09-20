SELECT * FROM DBA_ROLE_PRIVS  WHERE GRANTED_ROLE = 'DBA'; --у кого ДБА
select * from DBA_SYS_PRIVS WHERE GRANTEE='DBA'; --привилегии входящие в ДБА
--NOAUDIT ALL; --отключить весь аудит
--AUDIT SESSION; --АУДИТ НА СЕССИИ
--NOAUDIT SESSION; --откл АУДИТ НА СЕССИИ
--select * from dba_audit_session; --посмотреть аудит сессий
--select * from sys.aud$ --таблица по всему аудиту
--SELECT * FROM dba_stmt_audit_opts; --Установленные опции в базе за которыми следить
--audit all by FRED by access; --аудит на все пользователя FRED

/*
AUDIT ALL BY fireid BY ACCESS;
AUDIT SELECT TABLE, UPDATE TABLE, INSERT TABLE, DELETE TABLE BY fireid BY ACCESS;
AUDIT EXECUTE PROCEDURE BY fireid BY ACCESS;
--These options audit all DDL & DML issued by "fireid", along with some system events.
--DDL (CREATE, ALTER & DROP of objects)
--DML (INSERT UPDATE, DELETE, SELECT, EXECUTE).
--SYSTEM EVENTS (LOGON, LOGOFF etc.)
*/

/*
--АУДИТ на СТАРТЕ
audit ADMINISTER DATABASE TRIGGER;
audit ALTER SESSION;
audit ALTER USER;
audit ALTER SYSTEM;
audit CREATE SESSION;
audit CREATE USER;
audit DIRECTORY; 
audit CREATE ANY DIRECTORY; 
audit DROP ANY TABLE;
audit DROP USER;
audit EXECUTE ANY CLASS;
audit USER;
audit DATABASE LINK;
audit CREATE DATABASE LINK;
audit CREATE PUBLIC DATABASE LINK;
*/

/*
--Check these tables: ТАБЛИЦЫ С АУДИТОМ
dba_audit_exists
dba_audit_object
dba_audit_session
dba_audit_statement
dba_audit_trail
We also have these metadata views for Oracle auditing options:
dba_obj_audit_opts
dba_priv_audit_opts
dba_stmt_audit_opts
*/