begin
for i in
(select sid psid,
serial# serial
from v$session
where status='INACTIVE' and (machine like 'radius%' or machine='sd5vp43-ur') and LAST_CALL_ET >=28800)
loop
execute immediate 'Alter System Kill Session '''|| i.psid || ',' || i.serial || ''' IMMEDIATE';
end loop;
end;