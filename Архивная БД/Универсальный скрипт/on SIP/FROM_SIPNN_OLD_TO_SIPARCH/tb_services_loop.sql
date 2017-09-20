--Выполняется на архивной БД
--селекты через дблинк
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
numrows_arch number;
ex_custom EXCEPTION;
z exception;
PRAGMA EXCEPTION_INIT( ex_custom, -20001 );
i NUMBER := -36; --start sysdate - i
j NUMBER := -20; --end

--перенес PART2015_03 02 
BEGIN

dbms_output.put_line('Started at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));

--TB_SERVICES   
LOOP 
    SELECT 'PART' || TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY_MM') into part from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i), 'YYYY-MM') into dttm_start from dual;
    SELECT TO_CHAR(ADD_MONTHS (sysdate, i+1), 'YYYY-MM') into dttm_end from dual; --dttm_start + 1  
    dbms_output.put_line(part);
    dbms_output.put_line(dttm_start);
    dbms_output.put_line(dttm_end);         
    dbms_output.put_line(i);

--Статистику собирать не обязательно
--DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_SERVICES', partname => part, cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);


--Проверка
select num_rows into numrows_arch from SIP_NN.PART_VIEW where table_name='TB_SERVICES' and partition_name=part; --кол-во в архивной бд

    if (numrows_arch > 0)  then
    --dbms_output.put_line(numrows_arch);
    --raise z;
    raise_application_error( -20001, 'Записи в SIPARCH TB_SERVICES:'||part||' уже присутсвуют' );
    end if;
    

--вставка данных в TB_SERVICES@SIPARCH
insert /*+ APPEND */ into SIP_NN.TB_SERVICES
select * from TB_SERVICES@SIPNN_OLD where
SRV_DATE >= TO_DATE(dttm_start || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into SIP_NN.TB_SERVICES 
select * from TB_SERVICES@SIPNN_OLD where
SRV_DATE >= TO_DATE(dttm_start || '-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into SIP_NN.TB_SERVICES
select * from TB_SERVICES@SIPNN_OLD where
SRV_DATE >= TO_DATE(dttm_start || '-15 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

insert /*+ APPEND */ into SIP_NN.TB_SERVICES
select * from TB_SERVICES@SIPNN_OLD where
SRV_DATE >= TO_DATE(dttm_start || '-24 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN')  and  
SRV_DATE <  TO_DATE(dttm_end || '-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN');
commit;

    i := i + 1;
     
    EXIT WHEN (i >= j);    -- exit right after --END SYSDATE - 13
    END LOOP;
    
commit;
execute immediate 'ALTER SESSION CLOSE DATABASE LINK SIPNN_OLD'; --1 раз или 4 ?

dbms_output.put_line('Ended at: '|| TO_CHAR(SYSDATE, 'DD.MM.YYYY HH24:MI:SS'));


--dbms_output.put_line(part);
        exception
        when ex_custom then dbms_output.put_line( sqlerrm );
        when others then dbms_output.put_line(SQLCODE ||' '|| SUBSTR(SQLERRM, 1, 64));
       


END;
/
