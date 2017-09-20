set serveroutput on

begin
for i in
(select sid psid,
serial# serial
from v$session
where status='INACTIVE' and (username = 'SIP_IBS' or machine='sd5vp42-or') and LAST_CALL_ET >=20000)
loop
    begin
    execute immediate 'Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE';
    dbms_output.put_line('Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE');
    EXCEPTION  WHEN OTHERS THEN CONTINUE;
    END;
end loop;
end;