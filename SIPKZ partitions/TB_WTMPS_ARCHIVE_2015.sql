alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('032015','mmyyyy')) into 
(partition PART2015_02, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('042015','mmyyyy')) into 
(partition PART2015_03, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('052015','mmyyyy')) into 
(partition PART2015_04, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('062015','mmyyyy')) into 
(partition PART2015_05, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('072015','mmyyyy')) into 
(partition PART2015_06, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('082015','mmyyyy')) into 
(partition PART2015_07, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('092015','mmyyyy')) into 
(partition PART2015_08, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('102015','mmyyyy')) into 
(partition PART2015_09, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('112015','mmyyyy')) into 
(partition PART2015_10, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('122015','mmyyyy')) into 
(partition PART2015_11, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('012016','mmyyyy')) into 
(partition PART2015_12, partition PART_MAXVALUE) update global indexes;
alter table SIP_W.TB_WTMPS_ARCHIVE split partition PART_MAXVALUE at
(TO_DATE('022016','mmyyyy')) into 
(partition PART2016_01, partition PART_MAXVALUE) update global indexes;
