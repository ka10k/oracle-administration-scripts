set serveroutput on

declare
  op_id number;
  login varchar(3):='DIT';
  --pass=kx7py6nd
  cnt number;
  
begiN

select count(*)  into cnt from sip_w.acs_operators where AOP_LOGIN=login;

if (cnt=0) then
    select SIP_W.AOP_SEQ.nextval into op_id from dual;
else
    dbms_output.put_line('Account '||login||' already exists');
    return;    
end if;


INSERT INTO sip_w.acs_operators (
  AOP_ID,--
  AOP_MNAME,--
  AOP_DATE_FROM,
  AOP_DESCRIPTION,--
  AOP_PWD,--kx7py6nd
  AOP_EMAIL,--
  AOP_LNAME,--
  AOP_FNAME,--
  AOP_LOGIN,--
  AOP_ABO_PSWD_CHANGE,--
  AOP_ABO_PSWD_SHOW,--
  AOP_ACD_ID,--
  AOP_PRV_ID,--
  AOP_PRV_VIEW,--
  AOP_PRV_CONTROL,--
  AOP_PHONE) 
  VALUES( 
op_id,'ДИТ',TO_DATE(sysdate,'dd/mm/yyyy hh:mi:ss'),'Для тестирования','9787AA9195C4B7033A1A0FE2DCBD3AD9','a.grishin@volga.rt.ru','ДИТ','ДИТ',login,'Y','Y',(select min(ACD_ID) from sip_w.acs_departament),
(select min(PRV_ID) from sip_w.providers),'Y','Y','+7(951)9139311');
commit;
dbms_output.put_line('Account '||login||' created');

insert into SIP_W.ACS_OPERATORS_ACS_ROLES(AOA_AOP_ID,AOA_ARL_ID)
VALUES((select AOP_ID from sip_w.acs_operators where AOP_LOGIN=login),2);
commit;
dbms_output.put_line('Role assignment completed');
 
end;
/