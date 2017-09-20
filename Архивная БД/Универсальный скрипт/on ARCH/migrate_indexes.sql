--select * from dba_indexes where rownum<10
--select owner,index_name,index_type,table_name,tablespace_name,logging,status from  dba_indexes where owner in ('SIP_SR','SIP_SR_NEW');
--select * from dict
--select * from dba_ind_partitions where rownum<10;
--select index_owner,index_name,partition_name,status,tablespace_name,logging from dba_ind_partitions where index_owner in ('SIP_SR','SIP_SR_NEW') and (status<>'USABLE' or tablespace_name<>'USERS2' or logging<>'YES')




set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);
set serveroutput on

BEGIN
  FOR item IN (
   --select SID sd,SERIAL# ss from v$session where machine in ('Radius1','Radius2')
   --select SID sd,SERIAL# ss from v$session where username = ('SIP_IBS')
    --select SID sd,SERIAL# ss from v$session where MACHINE like 'rad-smr-srv%'
    --select table_owner tow, table_name tn, partition_name pn, logging lg from dba_tab_partitions where table_owner in ('SIP_SR','SIP_SR_NEW') order by 1,2,3
    select index_owner io, index_name inm, partition_name pn,status,tablespace_name,logging from dba_ind_partitions where index_owner in ('SIP_SR','SIP_SR_NEW') and (status<>'USABLE' or tablespace_name<>'USERS2' or logging<>'YES')
  )
  LOOP
    --execute immediate 'Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE';
    --execute immediate 'Alter table '|| item.tow || '.' || item.tn || ' modify partition '||item.pn||' logging';
    
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' MODIFY DEFAULT ATTRIBUTES TABLESPACE USERS2';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' nologging';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' rebuild partition '|| item.pn || ' TABLESPACE USERS2 Parallel (Degree 8)';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' noparallel logging';
    --DBMS_OUTPUT.PUT_LINE ('Alter index '|| item.io || '.' || item.inm || ' MODIFY DEFAULT ATTRIBUTES TABLESPACE USERS2;');
    --DBMS_OUTPUT.PUT_LINE ('Alter index '|| item.io || '.' || item.inm || ' nologging;');
    --DBMS_OUTPUT.PUT_LINE ('Alter index '|| item.io || '.' || item.inm || ' rebuild partition '|| item.pn || ' TABLESPACE USERS2 Parallel (Degree 8);');
    --DBMS_OUTPUT.PUT_LINE ('Alter index '|| item.io || '.' || item.inm || ' noparallel logging;');
    
    --ALTER INDEX SIP_SR.TWSC_TWSA_IX MODIFY DEFAULT ATTRIBUTES   TABLESPACE USERS2;
    --Alter index SIP_SR.INV_AB_FK_I nologging;
    --Alter index SIP_SR.INV_AB_FK_I rebuild partition PART_MAXVALUE TABLESPACE USERS2 Parallel (Degree 8) ;
    --Alter index SIP_SR.INV_AB_FK_I noparallel logging;
    
       
  END LOOP;
END;
/




