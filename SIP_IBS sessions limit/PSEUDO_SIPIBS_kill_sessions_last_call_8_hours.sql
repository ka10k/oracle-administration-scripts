set serveroutput on

begin
for i in
(select sid psid,
serial# serial
from v$session
where status='INACTIVE' and username = 'SIP_IBS' and machine like 'sd%' and SERVER='PSEUDO' and LAST_CALL_ET >=28800)
loop
    begin
    execute immediate 'Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE';
    dbms_output.put_line('Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE');
    EXCEPTION  WHEN OTHERS THEN CONTINUE;
    END;
end loop;
end;