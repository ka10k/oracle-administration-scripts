--alter system set undo_retention=3600 scope=both;
--alter system set job_queue_processes=30 scope=both;
--select * from dba_jobs where what like '%gather%' --87
--select to_date('01.01.4000 00:00:00','dd/mm/yyyy hh24:mi:ss') as a, TRUNC(LAST_DAY(SYSDATE)) + 30/1440 as b from dual
--select * from DBA_TAB_STATISTICS where OWNER='SIP_W' order by LAST_ANALYZED desc;
--select * from dba_indexes;
--dba_ind_partitions

--select sname, spare4 from sys.optstat_hist_control$;
--select * from sys.optstat_user_prefs$;

--Параметры автоматического сбора статистики объектов бд
/*
select
 DBMS_STATS.GET_PREFS ('AUTOSTATS_TARGET'),
 DBMS_STATS.GET_PREFS ('CASCADE'),
 DBMS_STATS.GET_PREFS ('DEGREE'),
 DBMS_STATS.GET_PREFS ('ESTIMATE_PERCENT'),
 DBMS_STATS.GET_PREFS ('METHOD_OPT'),
 DBMS_STATS.GET_PREFS ('NO_INVALIDATE'),
 DBMS_STATS.GET_PREFS ('GRANULARITY'),
 DBMS_STATS.GET_PREFS ('PUBLISH'),
 DBMS_STATS.GET_PREFS ('INCREMENTAL'),
 DBMS_STATS.GET_PREFS ('STALE_PERCENT')
 from dual;
 */
 
 --Таблицы с блокированной (процедурой DBMS_STATS.LOCK_TABLE_STATS) статистикой
 /*
 select owner, table_name, stattype_locked
from dba_tab_statistics
where  stattype_locked is not null
and owner not in ('SYS','SYSTEM');
*/
/*
select * from dba_autotask_task where client_name = 'auto optimizer stats collection';
select * from dba_autotask_client where client_name = 'auto optimizer stats collection';
select * from dba_autotask_client_history where client_name = 'auto optimizer stats collection';
select * from dba_autotask_job_history where client_name = 'auto optimizer stats collection';
select * from dba_autotask_operation where client_name = 'auto optimizer stats collection';
*/

--select DBMS_STATS.GET_PREFS ('STALE_PERCENT') as "STALE_PERCENT" from dual


--Мониторинг изменений данных с целью определения кандидатов для сбора статистики
/*
select T.OWNER,
       T.TABLE_NAME,
       TM.timestamp,
       sysdate,
       round(((TM.inserts + TM.updates + TM.deletes) /
             decode(t.NUM_ROWS, 0, (TM.inserts + TM.updates + TM.deletes), t.NUM_ROWS)
             ) * 100
             ,1) || ' %' AS CHANGE_PCT
  from DBA_TAB_MODIFICATIONS TM, dba_tables T
 where TM.table_owner = T.OWNER
   and T.OWNER = 'SIP_W'
   and TM.table_name = T.TABLE_NAME
   and (TM.inserts + TM.updates + TM.deletes) > 0
   and ((TM.inserts + TM.updates + TM.deletes) /
       decode(t.NUM_ROWS, 0, (TM.inserts + TM.updates + TM.deletes), t.NUM_ROWS)) * 100
       >
       DBMS_STATS.GET_PREFS('STALE_PERCENT', T.OWNER, T.TABLE_NAME)
 order by ((TM.inserts + TM.updates + TM.deletes) /
          decode(t.NUM_ROWS, 0, (TM.inserts + TM.updates + TM.deletes), t.NUM_ROWS)) desc
/
*/

/*
DBA_TABLES and DBA_OBJECT_TABLES
DBA_TAB_STATISTICS and DBA_TAB_COL_STATISTICS
DBA_TAB_HISTOGRAMS
DBA_TAB_COLS
DBA_COL_GROUP_COLUMNS
DBA_INDEXES and DBA_IND_STATISTICS
DBA_CLUSTERS
DBA_TAB_PARTITIONS and DBA_TAB_SUBPARTITIONS
DBA_IND_PARTITIONS and DBA_IND_SUBPARTITIONS
DBA_PART_COL_STATISTICS
DBA_PART_HISTOGRAMS
DBA_SUBPART_COL_STATISTICS
DBA_SUBPART_HISTOGRAMS
*/

--gather_stats_job
--select * from dba_scheduler_jobs
--describe dbms_stats.gather_database_stats
/*
DBMS_STATS.GATHER_SCHEMA_STATS
DBMS_STATS.GATHER_TABLE_STATS
DBMS_STATS.GATHER_DATABASE_STATS
DBMS_STATS.GATHER_SYSTEM_STATS
DBMS_STATS.GATHER_DICTIONARY_STATS
DBMS_STATS.GATHER_FIXED_OBJECTS_STATS --по фиксированным объектам
 dbms_stats.lock_table_stats('SCOTT','EMP');
 dbms_stats.unlock_table_stats('SCOTT','EMP');
 




ESTIMATE_PERCENT=>NULL --анализ по всем строкам
METHOD_OPT=>'FOR ALL COLUMS SIZE AUTO'
GRANULARITY=>'ALL' --только для таблиц, собирать по секция и подсекциям
CASCADE=>'TRUE' -как по таблицам так и по индексам
OPTIONS=>'GATHER' --собирать стат в любом случае, не важно есть статы или нет

*/
--select dbms_stats.get_prefs('PUBLISH') publish from dual; --публикация статистики
--SELECT TO_CHAR(SYSDATE, 'MM-DD-YYYY HH24:MI:SS') "NOW" FROM DUAL;
--select DBTIMEZONE from dual;

------------------------Сбор статсов----------------------------------
----------------------------------------------------------------------
--execute

--Лочим партицированные табилицы
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_ACCOUNTS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'JR_IP');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS_REDEF');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ONF_REGS');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_INVOICES');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_USER_SERV_ATTRS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSIONS_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSION_CHARGES');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_BLOCKING_ARCHIVE');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ABONENT_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'CT_POOLS_JN');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'VOIP_LOG_DETAIL');
DBMS_STATS.LOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES');


--Собираем статистику по схеме
DBMS_STATS.GATHER_SCHEMA_STATS(ownname=> 'SIP_W',ESTIMATE_PERCENT=>NULL,METHOD_OPT=>'FOR ALL COLUMS SIZE AUTO',GRANULARITY=>'ALL',CASCADE=>'TRUE',OPTIONS=>'GATHER');


--Разлочиваем партицированные таблицы
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_ACCOUNTS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'JR_IP');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS_REDEF');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_LDAP_TASKS');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ONF_REGS');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_INVOICES');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_OPTION_STATUS');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_USER_SERV_ATTRS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSIONS_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_WTMPS_SESSION_CHARGES');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_BLOCKING_ARCHIVE');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'ABONENT_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'CT_POOLS_JN');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'VOIP_LOG_DETAIL');
DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES');




exec DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSIONS_ARCHIVE',partname => 'PART_2009_05', cascade => TRUE, ESTIMATE_PERCENT => 25, granularity => 'PARTITION');



--select * from dba_tables where owner='SIP_W' order by partitioned