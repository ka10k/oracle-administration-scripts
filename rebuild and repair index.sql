

--Problem---
/*
SQL> alter index SIP_W.SRV_PK rebuild online nologging parallel 4;
alter index SIP_W.SRV_PK rebuild online nologging parallel 4
*
ERROR at line 1:
ORA-08104: this index object 53406 is being online built or rebuilt
*/


--Solution--

declare
lv_ret BOOLEAN;
begin
lv_ret := dbms_repair.online_index_clean(53406);
end;



--select * from user_indexes where index_name = 'SRV_PK';
--alter index SIP_W.SRV_PK rebuild online nologging parallel 4;