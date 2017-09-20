select * from dba_users where USERNAME='SIP_W';
select REGEXP_SUBSTR(DBMS_METADATA.get_ddl ('USER','SIP_W'), '''[^'']+''') PASSWD from dual;
select password, spare4 from sys.user$ where name = 'SIP_W';


--old_ch 7C3C2E7D0BBFD8CC

--select password, spare4 from sys.user$ where name = 'TTT';
-- alter user ttt identified by values '7C3C2E7D0BBFD8CC';
