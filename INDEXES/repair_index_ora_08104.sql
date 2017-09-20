--alter INDEX PN.CPA_CHARGE_ZERO_STATES_INDX1 NOPARALLEL;




declare
lv_ret BOOLEAN;
begin
lv_ret := dbms_repair.online_index_clean(3238090);
end;
/

/*
ORA-08104: this index object 75192 is being online built or rebuilt
*/

select * from dba_indexes where index_name = 'CPA_CHARGE_ZERO_STATES_INDX1';