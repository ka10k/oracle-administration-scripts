--select * from dict; --словарь данных, схемы sys & system
--select * from dba_jobs;
--select * from v$sort_segment;
--select * from v$tempfile;
--select * from dba_temp_files;
--select * from dba_free_space;
--select * from database_properties;
--select * from dba_tablespace_groups;
--select * from dba_users;
--select * from dba_tables; --инфа о любой таблице
--select * from dba_tab_partitions; --инфа о партицированных таблицах
--select * from dba_tab_columns; --инфа по колонкам таблицы
--describe ICOL$; --тоже самое
--select dbms_metadata.get_ddl('TABLE','ICOL$') from dual; --получить DDL создания 
--select * from v$database;
--select * from dba_indexes;--
--select * from user_indexes;
--alter index indx1 monitoring usage; --вкл мониторинг
--alter index indx1 nomonitoring usage; --выкл мониторинг индекса
--select * from v$object_usage; --инфа по использованию объектов
--alter index idx1 rebuild; ----оптимизация индекса после удаления большого кол-ва записей
--alter index idx1 rebuild online; --оптимизация индекса после удаления большого кол-ва записей с доступностью DML
--alter index idx1 rebuild online nologging; --оптимизация индекса после удаления большого кол-ва записей с доступностью DML без записи в REDO
--select * from dba_constraints; --ограничения на таблицах
--select * from dba_cons_columns; --имя столбца и позиция где опеределено ограничение
--alter system flush SHARED_POOL; --сброс разделяемого пула для очистки кеша от старых операторов SQL

--get the hidden parameters, describing NUMA state
/*
select a.ksppinm  "Parameter", b.ksppstvl "Session Value", c.ksppstvl "Instance Value",
  ksppdesc "Description"
  from x$ksppi a, x$ksppcv b, x$ksppsv c
 where a.indx = b.indx and a.indx = c.indx
   and substr(ksppinm,1,1)='_' 
   and lower(a.ksppinm) like '%numa%'
order by a.ksppinm;
*/

--alter system set log_archive_dest_1= 'LOCATION=/db/arch' SCOPE=spfile;
--alter system set log_archive_dest_1='location=/db/arch' SCOPE=both;
--alter system set log_archive_format = 'hb_%t_%s_%r.arc' scope=spfile;

--select * from v$shared_server;
--alter system set shared_servers=0 scope=both;
--alter system set dispatchers='' scope=both;

--select num,name,type,display_value,isdefault,description,update_comment from v$system_parameter

--select * from v$system_parameter where name like 'undo%';
 --select * from DBA_USERS;
 --select * from database_properties where property_name like 'DEFAULT%TABLESPACE';
-- SELECT DEFAULT_TABLESPACE FROM All_users;
--create user HBOOK identified by HBOOK;

/*
select a.sid,
       b.name,
       a.value
from   v$sesstat  a,
       v$statname b
where  a.statistic# = b.statistic#
       and b.name like '%CPU%'
       -- and a.sid = sys_context('USERENV', 'SID');
*/
/*
select *  from v$sysmetric where metric_name like '%CPU%'
                                 or metric_name like '%IO%' ;
select *  from v$sysmetric_summary where metric_name like '%CPU%'
                                 or metric_name like '%IO%' ;
select * from v$osstat;  

select * from dba_hist_osstat;
*/

--select * from v$osstat;
--select * from v$parameter where name='diagnostic_dest';
--select * from v$parameter where name='db_recovery_file_dest_size'
--or name='db_name' or name='db_unique_name';


--#Отображение SQL выполняемого пользователем
/*
select a.sid, a.username, s.sql_text from v$session a, v$sqltext s where
a.SQL_ADDRESS = s.ADDRESS and
a.SQL_HASH_VALUE = s.HASH_VALUE and
a.username like 'HR%'
order by a.username, a.sid, s.PIECE;
*/

--#Изменение пароля через хеш
--select password from user$ where name='SYS';
--alter user sys identified by values '';


--#Кильнуть сессию
--select sid,serial# from v$session;
--alter system kill session 'sid,serial';
--bash# kill -9 pid
--select * from v$session; --8188:924

--#Сессия в OS
--select sid, spid, osuser, s.program from v$process p, v$session s
--where p.addr=s.paddr;

--select * from v$process






