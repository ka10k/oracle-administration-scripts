select 'create or replace public synonym '||object_name || ' for '|| object_name ||';'
  from dba_objects where status != 'VALID'  and object_type = 'SYNONYM'
