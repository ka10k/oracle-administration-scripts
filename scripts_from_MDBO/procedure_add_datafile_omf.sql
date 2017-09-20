create or replace procedure add_data_file_pr
 as
 CURSOR rs IS
  select tablespace_name n,
   round((sum(maxbytes)-sum(bytes))/(sum(maxbytes))*100) as use from DBA_DATA_FILES
   group by tablespace_name;
begin
 for recl IN rs loop
  if recl.use<90 then
   begin
    insert into  add_data_file values (sysdate,recl.use,'add file');
    EXECUTE IMMEDIATE 'alter tablespace '||recl.n||' add datafile';
    end;
   end if;
end loop;
end;
