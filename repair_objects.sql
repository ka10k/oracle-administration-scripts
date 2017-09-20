declare
  isclean boolean;
begin
  isclean := false;

  while isclean=false
  loop
    isclean := dbms_repair.online_index_clean(object_id=>dbms_repair.all_index_id, wait_for_lock=>dbms_repair.lock_wait
    );
    dbms_lock.sleep(10);

  end loop;

exception

when others then
  raise;

end;
/