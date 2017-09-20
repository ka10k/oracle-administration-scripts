--select * from dba_tab_partitions where table_owner='SIP_W' and table_name='ABONENT_JN' order by partition_name desc;
--SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') "NOW" FROM DUAL;
--PART2014_01 PART2014_01
--01-29-2014 13:46:38
--SELECT 'PART' || TO_CHAR(SYSDATE, 'YYYY_MM') "NOW" FROM DUAL;
set serveroutput on;
declare
   part varchar2(11);
   dttm varchar2(19);
   begin
   
   SELECT 'PART' || TO_CHAR(SYSDATE, 'YYYY_MM') into part from dual;
   SELECT TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS') into dttm FROM DUAL;
   dbms_output.put_line('—тарт ' || dttm);
   /*
   таблицы партицированы не по дате
   JR_IP
   TB_LDAP_TASKS_REDEF
   ONF_REGS
   TB_OPTION_STATUS
   */
---------------------Ћочим партицированные табилицы-----------------------
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_ACCOUNTS_JN');
--DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'JR_IP');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS_JN');
--DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS_REDEF');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS');
--DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ONF_REGS');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_INVOICES');
--DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_USER_SERV_ATTRS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSIONS_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSION_CHARGES');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_BLOCKING_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ABONENT_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'CT_POOLS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'VOIP_LOG_DETAIL');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES');


------------—обираем статистику по схеме SIP_W, кроме залоченных------------------------------------
DBMS_STATS.GATHER_SCHEMA_STATS(ownname=> 'SIP_W',ESTIMATE_PERCENT=>NULL,METHOD_OPT=>'FOR ALL COLUMS SIZE AUTO',GRANULARITY=>'ALL',CASCADE=>'TRUE',OPTIONS=>'GATHER');

-------------------------–азлочиваем партицированные таблицы-----------------------------------------------
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_ACCOUNTS_JN');
--DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'JR_IP');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS_JN');
--DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS_REDEF');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS');
--DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ONF_REGS');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_INVOICES');
--DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_USER_SERV_ATTRS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSIONS_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSION_CHARGES');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_BLOCKING_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ABONENT_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'CT_POOLS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'VOIP_LOG_DETAIL');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES');


---------------—обираем статистику по партици€м партицированных таблиц и индексам за текущий мес€ц--------   
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_ACCOUNTS_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_ARCHIVE',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_OPTION_STATUS_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_LDAP_TASKS',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_INVOICES',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_USER_SERV_ATTRS_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSIONS_ARCHIVE',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSION_CHARGES',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_BLOCKING_ARCHIVE',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'CT_POOLS_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'VOIP_LOG_DETAIL',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'ABONENT_JN',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES',partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION');
   
   
   SELECT TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS') into dttm FROM DUAL;
   dbms_output.put_line('—топ ' || dttm);
   end;
   /
   
 
