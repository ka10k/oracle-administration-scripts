--ALTER TABLE SIP_SM.TB_WTMPS_SESSIONS_ARCHIVE truncate partition PART2015_01
--select table_owner,table_name,partition_name,logging from dba_tab_partitions where table_owner in ('SIP_SR','SIP_SR_NEW') order by 1,2,3;



set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);
set serveroutput on

BEGIN
  FOR item IN (
   --select SID sd,SERIAL# ss from v$session where machine in ('Radius1','Radius2')
   --select SID sd,SERIAL# ss from v$session where username = ('SIP_IBS')
    --select SID sd,SERIAL# ss from v$session where MACHINE like 'rad-smr-srv%'
    select table_owner tow, table_name tn, partition_name pn, logging lg from dba_tab_partitions where table_owner in ('SIP_SR','SIP_SR_NEW') order by 1,2,3
  )
  LOOP
    --execute immediate 'Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE';
    execute immediate 'Alter table '|| item.tow || '.' || item.tn || ' modify partition '||item.pn||' logging';
    DBMS_OUTPUT.PUT_LINE ('Alter table '|| item.tow || '.' || item.tn || ' modify partition '||item.pn||' logging;');
       
  END LOOP;
END;
/
