ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_01 AT 
 (TO_DATE(' 2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_02 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_01);
       
ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_02 AT 
 (TO_DATE(' 2015-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_03 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_02);       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_03 AT 
 (TO_DATE(' 2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_04 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_03);       
       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_04 AT 
 (TO_DATE(' 2015-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_05 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_04);       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_05 AT 
 (TO_DATE(' 2015-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_06 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_05);       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_06 AT 
 (TO_DATE(' 2015-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_07 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_06);       
       
ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_07 AT 
 (TO_DATE(' 2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_08 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_07);       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_08 AT 
 (TO_DATE(' 2015-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_09 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_08);       
       

ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_09 AT 
 (TO_DATE(' 2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_10 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_09);       


ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_10 AT 
 (TO_DATE(' 2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_11 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_10);       


ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_11 AT 
 (TO_DATE(' 2016-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2015_12 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_11);       


ALTER TABLE SIP_W.ABONENT_JN
 SPLIT PARTITION PART2015_12 AT 
 (TO_DATE(' 2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
 INTO (PARTITION PART2016_01 
       TABLESPACE USERS
       PCTFREE    5
       INITRANS   5
       MAXTRANS   255
       STORAGE    (
                   INITIAL          2M
                   NEXT             1M
                   MAXSIZE          UNLIMITED
                   MINEXTENTS       1
                   BUFFER_POOL      DEFAULT
                   FLASH_CACHE      DEFAULT
                   CELL_FLASH_CACHE DEFAULT
                  ), 
       PARTITION PART2015_12);       
       