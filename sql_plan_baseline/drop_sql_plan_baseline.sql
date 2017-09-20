set serveroutput on
declare
ret_value pls_integer;
sql_handle_in varchar2(30);
cursor c1 is
select sql_handle from dba_sql_plan_baselines;
--where sql_text like 'SELECT USS.USS_AB_ID, USS.USS_US_USER_NAME, USS.USS_LOGNAME, USS.USS_SL_TYPE FROM CT_USERS US, CT_USER_SERVICES USS WHERE US.US_USER_NAME = USS.USS_US_USER_NAME AND USS.USS_SL_TYPE = %' ;
begin
open c1 ;
loop
fetch c1 into sql_handle_in;
exit when c1%notfound;
ret_value := dbms_spm.drop_sql_plan_baseline(sql_handle=>sql_handle_in,plan_name=>NULL);
dbms_output.put_line(ret_value);
end loop;
end;
/