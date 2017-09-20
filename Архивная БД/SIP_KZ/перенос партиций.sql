--select count(*) from SIP_W.TB_SERVICES partition (PART2014_03); --51502315

/*
create PUBLIC database link "SIPARCH"
connect to sip_kz
identified by "sip_kz"
using '(DESCRIPTION =
    (ADDRESS_LIST =
      (ADDRESS = (PROTOCOL = TCP)(HOST = sip-tst2.mrk.vt.ru)(PORT = 1521))
    )
    (CONNECT_DATA =
      (SERVICE_NAME = SIPARCH)
    )
  )' ;
*/

--select * from dual@SIPARCH;


--select * from TB_SERVICES@SIPARCH;

--insert into TB_SERVICES@SIPARCH select * from SIP_W.TB_SERVICES partition (PART2014_03); --51502315
--create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_03));


drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_04));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;

drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_05));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;


drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_06));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;


drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_07));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;


drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_08));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;


drop table SIP_W.TB_SERVICES_TEMP_2;
create table SIP_W.TB_SERVICES_TEMP_2 as (select * from SIP_W.TB_SERVICES partition (PART2014_09));
insert into SIP_KZ.TB_SERVICES@SIPARCH (select * from SIP_W.TB_SERVICES_TEMP_2);
commit;



