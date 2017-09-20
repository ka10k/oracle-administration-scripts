--ALTER INDEX SIP_W.INV_US_FK_I MODIFY DEFAULT ATTRIBUTES TABLESPACE INDX;
--select index_name from dba_indexes where owner in ('SIP_W','SIP_IBS');

 
set serveroutput on

--exec DBMS_OUTPUT.ENABLE(1000000);
exec DBMS_OUTPUT.ENABLE(buffer_size => NULL);

BEGIN
  FOR item IN (
   --select index_name from dba_indexes where owner ='SIP_W'
   select index_name from dba_indexes where owner ='SIP_IBS'
  )
  LOOP
    --execute immediate 'Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE';
    --DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
    --DBMS_OUTPUT.PUT_LINE      ('ALTER INDEX SIP_W.' || item.index_name || ' MODIFY DEFAULT ATTRIBUTES TABLESPACE INDX;');
    DBMS_OUTPUT.PUT_LINE      ('ALTER INDEX SIP_IBS.' || item.index_name || ' MODIFY DEFAULT ATTRIBUTES TABLESPACE INDX;');
   
  END LOOP;
END;
/