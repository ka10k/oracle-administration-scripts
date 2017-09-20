--Statement level
--Statements that can be audited 
select * from STMT_AUDIT_OPTION_MAP;


--Audit records can be found in DBA_STMT_AUDIT_OPTS.
select * from DBA_STMT_AUDIT_OPTS;

--Object level
--Audit records can be found in DBA_OBJ_AUDIT_OPTS.
--These objects can be audited: tables, views, sequences, packages, stored procedures and stored functions.
select * from DBA_OBJ_AUDIT_OPTS;


--Privilege level
--Auditing will be done at privilege level.
 select * from DBA_PRIV_AUDIT_OPTS;
 
 --http://satya-dba.blogspot.ru/2009/05/auditing-in-oracle.html