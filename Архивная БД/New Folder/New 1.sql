--select * from PART_VIEW@SIPARCH;
--select count(*) from sip_w.providers;
  
--alter table sip_w.tb_services drop partition PART2014_03;
/*
alter table sip_w.tb_services drop partition PART2014_04;
alter table sip_w.tb_services drop partition PART2014_05;
alter table sip_w.tb_services drop partition PART2014_06;
alter table sip_w.tb_services drop partition PART2014_07;
alter table sip_w.tb_services drop partition PART2014_08;
alter table sip_w.tb_services drop partition PART2014_09;
alter table sip_w.tb_services drop partition PART2014_10;
alter table sip_w.tb_services drop partition PART2014_11;
*/

--exec DBMS_STATS.UNLOCK_TABLE_STATS (ownname=> 'SIP_W',tabname=>'TB_SERVICES');


--alter table sip_w.tb_wtmps_archive drop partition PART2014_01;
--alter table sip_w.tb_wtmps_archive drop partition PART2014_02;
--alter table sip_w.tb_wtmps_archive drop partition PART2014_06;
--alter table sip_w.tb_wtmps_archive drop partition PART2014_07;
--alter table sip_w.tb_wtmps_archive drop partition PART2014_08;
--alter table sip_w.tb_wtmps_archive drop partition PART2015_06;
--alter table sip_w.tb_wtmps_archive drop partition PART2015_08;
