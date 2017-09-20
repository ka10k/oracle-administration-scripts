--CREATE OR REPLACE PROCEDURE SYS.MIGRATION_SIPARCH IS
declare
part varchar2(11);
dttm varchar2(19);
owner varchar2(50);
tablename varchar(50);
cnt varchar2(50);
string varchar2(2000);
dttm_start varchar2(8);
dttm_end varchar2(8);
numrows_arch number;
table_name varchar2(50);
ex_custom EXCEPTION;
z exception;
rows_cnt number;
rows_cnt_one_fourth number;
PRAGMA EXCEPTION_INIT( ex_custom, -20001 );


BEGIN

dbms_output.put_line('Started at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));

--TB_SERVICES   
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -14), 'YYYY_MM') into part from dual;

SELECT TO_CHAR(ADD_MONTHS (sysdate, -14), 'YYYY-MM') into dttm_start from dual;
SELECT TO_CHAR(ADD_MONTHS (sysdate, -13), 'YYYY-MM') into dttm_end from dual;
dbms_output.put_line(part);
dbms_output.put_line(dttm_start);
dbms_output.put_line(dttm_end);

--Статистику собирать не обязательно
--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);


--Проверка
--select num_rows into numrows_arch from PART_VIEW@SIPARCH where table_name='TB_SERVICES' and partition_name=part; --кол-во в архивной бд

--    if (numrows_arch > 0)  then
    --dbms_output.put_line(numrows_arch);
    --raise z;
--    raise_application_error( -20001, 'Записи в SIPARCH TB_SERVICES:'||part||' уже присутсвуют' );
--    end if;

    
select 'SIP_W.TB_SERVICES_'|| part into table_name from dual;
dbms_output.put_line(table_name);

select 'SIP_W.TB_SERVICES_DEL' into table_name from dual;
dbms_output.put_line(table_name);

/*
execute immediate 
q'[CREATE TABLE SIP_W.TB_SERVICES_]'|| part || q'[
(
  SRV_ID               NUMBER                   NOT NULL,
  SRV_DATE             DATE                     NOT NULL,
  SRV_TIME             NUMBER                   DEFAULT 1                     NOT NULL,
  SRV_VALUE            NUMBER                   NOT NULL,
  SRV_COST             NUMBER                   NOT NULL,
  SRV_TASKID           VARCHAR2(80 BYTE)        NOT NULL,
  SRV_BASE_COST        NUMBER(24,6)             NOT NULL,
  SRV_MSR_CODE         VARCHAR2(10 BYTE)        NOT NULL,
  SRV_CNT_ID           NUMBER(10)               NOT NULL,
  SRV_SRD_CODE         VARCHAR2(15 BYTE)        NOT NULL,
  SRV_INT_CODE         VARCHAR2(10 BYTE)        NOT NULL,
  SRV_TRS_ID           NUMBER                   NOT NULL,
  SRV_AB_ID            NUMBER(10)               NOT NULL,
  SRV_USER_NAME        VARCHAR2(50 BYTE)        NOT NULL,
  SRV_TFP_CODE         VARCHAR2(15 BYTE),
  SRV_PORT             NUMBER(10),
  SRV_NAS              VARCHAR2(10 BYTE),
  SRV_IP               VARCHAR2(100 BYTE),
  SRV_CALLING_STATION  NUMBER,
  SRV_CALLED_STATION   NUMBER,
  SRV_INPUTOCTETS      NUMBER,
  SRV_OUTPUTOCTETS     NUMBER,
  SRV_USS_LOGNAME      VARCHAR2(50 BYTE),
  SRV_USS_SL_TYPE      VARCHAR2(10 BYTE),
  SRV_SPEED            NUMBER,
  SRV_TRL_ID           NUMBER(10),
  SRV_RB_FL            VARCHAR2(1 BYTE),
  SRV_PRV_ID           NUMBER,
  SRV_SESS_NUM         NUMBER(5),
  SRV_MD_ID            NUMBER,
  SRV_DESC             VARCHAR2(2000 BYTE)
)
NOCOMPRESS 
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    5
INITRANS   30
MAXTRANS   255
STORAGE    (
            INITIAL          10M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING]';
*/

--exchange
--drop partition
--execute immediate 'select count(*) from ' || table_name || ' into rows_cnt from dual';

--dbms_output.put_line(q'[select count(*) from ]' || table_name || q'[ into rows_cnt from dual]');

--execute immediate 'select count(*) into rows_cnt from ' || table_name;

execute immediate 'select count(*) from ' || table_name into rows_cnt;
select ceil(rows_cnt/4) into rows_cnt_one_fourth from dual;
dbms_output.put_line(rows_cnt_one_fourth);




execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH select * from ' || table_name || ' where rownum<'||rows_cnt_one_fourth;
commit;


execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH
SELECT SRV_ID, SRV_DATE, SRV_TIME, SRV_VALUE, SRV_COST, SRV_TASKID, SRV_BASE_COST, SRV_MSR_CODE, SRV_CNT_ID, SRV_SRD_CODE, SRV_INT_CODE,
SRV_TRS_ID, SRV_AB_ID, SRV_USER_NAME, SRV_TFP_CODE,SRV_PORT, SRV_NAS, SRV_IP, SRV_CALLING_STATION, SRV_CALLED_STATION, SRV_INPUTOCTETS,
SRV_OUTPUTOCTETS, SRV_USS_LOGNAME, SRV_USS_SL_TYPE, SRV_SPEED, SRV_TRL_ID, SRV_RB_FL, SRV_PRV_ID, SRV_SESS_NUM, SRV_MD_ID, SRV_DESC
from (select m.*, rownum r from ' || table_name || ' m) where r >= '||rows_cnt_one_fourth||' and r < '||rows_cnt_one_fourth*2;
commit;

execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH
SELECT SRV_ID, SRV_DATE, SRV_TIME, SRV_VALUE, SRV_COST, SRV_TASKID, SRV_BASE_COST, SRV_MSR_CODE, SRV_CNT_ID, SRV_SRD_CODE, SRV_INT_CODE,
SRV_TRS_ID, SRV_AB_ID, SRV_USER_NAME, SRV_TFP_CODE,SRV_PORT, SRV_NAS, SRV_IP, SRV_CALLING_STATION, SRV_CALLED_STATION, SRV_INPUTOCTETS,
SRV_OUTPUTOCTETS, SRV_USS_LOGNAME, SRV_USS_SL_TYPE, SRV_SPEED, SRV_TRL_ID, SRV_RB_FL, SRV_PRV_ID, SRV_SESS_NUM, SRV_MD_ID, SRV_DESC
from (select m.*, rownum r from ' || table_name || ' m) where r >= '||rows_cnt_one_fourth*2||' and r < '||rows_cnt_one_fourth*3;
commit;

execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH
SELECT SRV_ID, SRV_DATE, SRV_TIME, SRV_VALUE, SRV_COST, SRV_TASKID, SRV_BASE_COST, SRV_MSR_CODE, SRV_CNT_ID, SRV_SRD_CODE, SRV_INT_CODE,
SRV_TRS_ID, SRV_AB_ID, SRV_USER_NAME, SRV_TFP_CODE,SRV_PORT, SRV_NAS, SRV_IP, SRV_CALLING_STATION, SRV_CALLED_STATION, SRV_INPUTOCTETS,
SRV_OUTPUTOCTETS, SRV_USS_LOGNAME, SRV_USS_SL_TYPE, SRV_SPEED, SRV_TRL_ID, SRV_RB_FL, SRV_PRV_ID, SRV_SESS_NUM, SRV_MD_ID, SRV_DESC
from (select m.*, rownum r from ' || table_name || ' m) where r >= '||rows_cnt_one_fourth*3||' and r <=
 '||rows_cnt;
commit;

--execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH SELECT * from (select m.*, rownum r from ' || table_name || ' m) where r >= '||rows_cnt_one_fourth*2||' and r < '||rows_cnt_one_fourth*3;
--commit;

--execute immediate 'insert /*+ APPEND */ into TB_SERVICES_DEL@SIPARCH SELECT * from (select m.*, rownum r from ' || table_name || ' m) where r >= '||rows_cnt_one_fourth*3||' and r <= '||rows_cnt;
--commit;


execute immediate 'ALTER SESSION CLOSE DATABASE LINK SIPARCH';


dbms_output.put_line('Ended at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));


--dbms_output.put_line(part);
        exception
        when ex_custom then dbms_output.put_line( sqlerrm );
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
       


END;
/
