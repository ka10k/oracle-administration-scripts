set serveroutput on;
declare
part varchar2(11);
dttm varchar2(19);
owner varchar2(50);
tablename varchar(50);
cnt varchar2(50);
string varchar2(2000);
dttm_start varchar2(8);
dttm_end varchar2(8);

BEGIN

dbms_output.put_line('Started at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));

--TB_SERVICES   
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -14), 'YYYY_MM') into part from dual;

SELECT TO_CHAR(ADD_MONTHS (sysdate, -14), 'YYYY-MM') into dttm_start from dual;
SELECT TO_CHAR(ADD_MONTHS (sysdate, -13), 'YYYY-MM') into dttm_end from dual;
dbms_output.put_line(part);


--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);

--вставка данных в TB_SERVICES@SIPARCH
insert /*+ APPEND */ into TB_SERVICES@SIPARCH 
select * from SIP_W.TB_SERVICES where
SRV_DATE >= TO_DATE(dttm_start || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_SERVICES@SIPARCH 
select * from SIP_W.TB_SERVICES where
SRV_DATE >= TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_SERVICES@SIPARCH 
select * from SIP_W.TB_SERVICES where
SRV_DATE >= TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_SERVICES@SIPARCH 
select * from SIP_W.TB_SERVICES where
SRV_DATE >= TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_end || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;




--TB_WTMPS_SESSIONS_ARCHIVE
SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, -5), 'YYYY_MM') into part from dual;
SELECT TO_CHAR(ADD_MONTHS (sysdate, -5), 'YYYY-MM') into dttm_start from dual;
SELECT TO_CHAR(ADD_MONTHS (sysdate, -4), 'YYYY-MM') into dttm_end from dual;

--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSIONS_ARCHIVE', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);


insert /*+ APPEND */ into TB_WTMPS_SESSIONS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSIONS_ARCHIVE where
TWSA_START_DATE >= TO_DATE(dttm_start || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSA_START_DATE <  TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSIONS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSIONS_ARCHIVE where
TWSA_START_DATE >= TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSA_START_DATE <  TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSIONS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSIONS_ARCHIVE where
TWSA_START_DATE >= TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSA_START_DATE <  TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSIONS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSIONS_ARCHIVE where
TWSA_START_DATE >= TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSA_START_DATE <  TO_DATE(dttm_end || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;







--TB_WTMPS_ARCHIVE
--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_ARCHIVE', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);
insert /*+ APPEND */ into TB_WTMPS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_ARCHIVE where
TWH_DATE >= TO_DATE(dttm_start || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWH_DATE <  TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_ARCHIVE where
TWH_DATE >= TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWH_DATE <  TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_ARCHIVE where
TWH_DATE >= TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWH_DATE <  TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_ARCHIVE@SIPARCH 
select * from SIP_W.TB_WTMPS_ARCHIVE where
TWH_DATE >= TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWH_DATE <  TO_DATE(dttm_end || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;





--TB_WTMPS_SESSION_CHARGES
--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_WTMPS_SESSION_CHARGES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);
insert /*+ APPEND */ into TB_WTMPS_SESSION_CHARGES@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSION_CHARGES where
TWSC_SESSION_DATE >= TO_DATE(dttm_start || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSC_SESSION_DATE <  TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSION_CHARGES@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSION_CHARGES where
TWSC_SESSION_DATE >= TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSC_SESSION_DATE <  TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSION_CHARGES@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSION_CHARGES where
TWSC_SESSION_DATE >= TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSC_SESSION_DATE <  TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into TB_WTMPS_SESSION_CHARGES@SIPARCH 
select * from SIP_W.TB_WTMPS_SESSION_CHARGES where
TWSC_SESSION_DATE >= TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
TWSC_SESSION_DATE <  TO_DATE(dttm_end || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;


execute immediate 'ALTER SESSION CLOSE DATABASE LINK SIPARCH'; --1 раз или 4 ?

dbms_output.put_line('Ended at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));


--dbms_output.put_line(part);
        exception
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
        

END;
/

