--select * from dba_audit_session;
--show parameters aud;
--select * from aud$ order by NTIMESTAMP# desc;
--SELECT username, TIMESTAMP, owner, obj_name, action_name, obj_privilege, sys_privilege, admin_option, grantee, audit_option, returncode FROM dba_audit_statement;
--select * from dba_audit_object;
--SELECT audit_option FROM dba_stmt_audit_opts; --опции установленные в јудите (за какими операци€ми следить)
SELECT privilege, success, failure FROM dba_priv_audit_opts;
--AUDIT select table, insert table, update table, delete table BY ah, be; --аудит команд дл€ пользователей ah, be
--NOAUDIT insert table, update table, delete table, select table BY ah, be; --отключаить
 --AUDIT select, insert, update, delete ON hr.employees; --аудит операций на таблицу
 --DESC dba_audit_trail;
--AUDIT alter system;  --следить за операцией alter system


 
--alter system set "_dbms_sql_security_level" = 384 scope=spfile;
--alter system set audit_trail='DB','EXTENDED' scope=spfile; --только в sys.aud$ и обязательные на файловой системе
--truncate table sys.aud$;

--AUDIT_SYS_OPERATIONS = TRUE
--AUDIT_TRAIL=OS,

--show parameter AUDIT_SYS_OPERATIONS
--alter system set AUDIT_TRAIL=NONE scope=spfile; --отключить аудит