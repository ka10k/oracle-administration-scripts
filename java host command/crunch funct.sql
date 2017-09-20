create or replace function KA10K.crunch (ins varchar2) return varchar2
as
ous varchar2(4000);
tmp varchar2(4000);
begin
 tmp:= ins;
 while (instr(tmp,' ',1) > 0 )
 loop
 ous := ous || ' ' || substr(tmp,1,instr(tmp,' ',1)-1);
 tmp := trim(both ' ' from substr(tmp,instr(tmp,' ',1)));
 end loop;
 ous := ous || ' ' || trim(tmp);
 return trim(ous);
end crunch;