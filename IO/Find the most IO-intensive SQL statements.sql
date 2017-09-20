-- Top 30 I/O Intensive SQL Statements Identification : top30iosql.sql
set linesize 80
set pagesize 58
set heading on
set serveroutput on

spool top30iosql.txt

declare
cursor curs1 is
select executions, disk_reads, buffer_gets, first_load_time, sql_text
from v$sqlarea order by disk_reads / decode(executions,0,1,executions) desc;
stmnt_ctr number(3);
wrt1 number(3);

begin
dbms_output.enable(50000);
stmnt_ctr := 0;

for inrec in curs1 loop
stmnt_ctr := stmnt_ctr + 1;
if stmnt_ctr >= 31 then
exit;
end if;

dbms_output.put_line('--------------------------------------' ||
'--------------------------------------');
dbms_output.put_line('SQL Stmnt Number: ' || to_char(stmnt_ctr));
dbms_output.put_line('--------------------------------------' ||
'--------------------------------------');
dbms_output.put_line('Executions : ' ||
to_char(inrec.executions));
dbms_output.put_line('Disk Reads : ' || to_char(inrec.disk_reads) ||
' Buffer Gets : ' || to_char(inrec.buffer_gets));
dbms_output.put_line('First Load Time: ' || inrec.first_load_time);
dbms_output.put_line('SQL Statement-------->');
wrt1 := 1;
while wrt1 <= ceil(length(inrec.sql_text) / 72) loop
dbms_output.put_line('.....' ||
substr(inrec.sql_text,((wrt1-1)*72)+1,72));
wrt1 := wrt1 + 1;
end loop;
dbms_output.put_line('--------------------------------------' ||
'--------------------------------------');
dbms_output.put_line(' ');
end loop;
end;
/
spool off
set serveroutput off
set termout on