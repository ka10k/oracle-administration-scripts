
--USERNAME='SIP_IBS'
--MACHINE = 'sd5vp32-ul'
--MACHNE like '%SIPUL-F0%'

set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);
set serveroutput on

BEGIN
  FOR item IN (
   --select SID sd,SERIAL# ss from v$session where machine in ('Radius1','Radius2')
   select SID sd,SERIAL# ss from v$session where username = ('SIP_IBS')
  )
  LOOP
    execute immediate 'Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE';
    --DBMS_OUTPUT.PUT_LINE      ('Alter System Kill Session '''|| item.sd || ',' || item.ss || ''' IMMEDIATE;');
    --continue;
    

  END LOOP;
  
  exception when others then NULL;
END;
/
