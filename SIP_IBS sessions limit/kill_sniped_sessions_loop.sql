set serveroutput on

BEGIN
  FOR item IN (
  select sid sd ,serial# ss from v$session where username='SIP_IBS' and status='SNIPED'
  )
  LOOP
  
  BEGIN
    execute immediate 'Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE';
    DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
    --DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
    
    EXCEPTION  WHEN OTHERS THEN CONTINUE;
   END;
   
       
  END LOOP;
END;
/

