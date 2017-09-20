set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);
set serveroutput on

BEGIN
  FOR item IN (
    select index_owner io, index_name inm, partition_name pn,status,tablespace_name,logging from dba_ind_partitions where index_owner in ('SIP_SM') and (status<>'USABLE' or tablespace_name<>'USERS2' or logging<>'YES')
  )
  LOOP
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' MODIFY DEFAULT ATTRIBUTES TABLESPACE USERS2';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' nologging';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' rebuild partition '|| item.pn || ' TABLESPACE USERS2 Parallel (Degree 8)';
    execute immediate 'Alter index '|| item.io || '.' || item.inm || ' noparallel logging';
  END LOOP;
END;
/
