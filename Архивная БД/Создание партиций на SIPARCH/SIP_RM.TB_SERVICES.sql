ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_06 AT 
 (TO_DATE(' 2015-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_05
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_06);
       


ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_05 AT 
 (TO_DATE(' 2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_04
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_05);
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_04 AT 
 (TO_DATE(' 2015-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_03
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_04);
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_03 AT 
 (TO_DATE(' 2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_02
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_03);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_02 AT 
 (TO_DATE(' 2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_01
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_02);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2015_01 AT 
 (TO_DATE(' 2015-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_12
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_01);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_12 AT 
 (TO_DATE(' 2014-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_11
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_12);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_11 AT 
 (TO_DATE(' 2014-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_10
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_11);
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_10 AT 
 (TO_DATE(' 2014-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_09
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_10);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_09 AT 
 (TO_DATE(' 2014-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_08
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_09);
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_08 AT 
 (TO_DATE(' 2014-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_07
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_08);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_07 AT 
 (TO_DATE(' 2014-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_06
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_07);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_06 AT 
 (TO_DATE(' 2014-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_05
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_06);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_05 AT 
 (TO_DATE(' 2014-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_04
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_05);
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_04 AT 
 (TO_DATE(' 2014-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_03
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_04);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_03 AT 
 (TO_DATE(' 2014-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_02
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_03);
       
       
ALTER TABLE SIP_RM.TB_SERVICES
 SPLIT PARTITION PART2014_02 AT 
 (TO_DATE(' 2014-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2014_01
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   20
       MAXTRANS   255
       STORAGE    (
                   INITIAL          64M
                   NEXT             64M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2014_02);                                                                                                                