DROP TABLE SIP_KZ.TB_SERVICES CASCADE CONSTRAINTS;

CREATE TABLE SIP_KZ.TB_SERVICES
(
  SRV_ID               NUMBER                   NOT NULL,
  SRV_DATE             DATE                     NOT NULL,
  SRV_TIME             NUMBER                   DEFAULT 1                     NOT NULL,
  SRV_VALUE            NUMBER                   NOT NULL,
  SRV_COST             NUMBER                   NOT NULL,
  SRV_TASKID           VARCHAR2(80 BYTE)        NOT NULL,
  SRV_BASE_COST        NUMBER(24,6)             NOT NULL,
  SRV_MSR_CODE         VARCHAR2(10 BYTE)        NOT NULL,
  SRV_CNT_ID           NUMBER(10)               NOT NULL,
  SRV_SRD_CODE         VARCHAR2(15 BYTE)        NOT NULL,
  SRV_INT_CODE         VARCHAR2(10 BYTE)        NOT NULL,
  SRV_TRS_ID           NUMBER                   NOT NULL,
  SRV_AB_ID            NUMBER(10)               NOT NULL,
  SRV_USER_NAME        VARCHAR2(50 BYTE)        NOT NULL,
  SRV_TFP_CODE         VARCHAR2(15 BYTE),
  SRV_PORT             NUMBER(10),
  SRV_NAS              VARCHAR2(10 BYTE),
  SRV_IP               VARCHAR2(100 BYTE),
  SRV_CALLING_STATION  NUMBER,
  SRV_CALLED_STATION   NUMBER,
  SRV_INPUTOCTETS      NUMBER,
  SRV_OUTPUTOCTETS     NUMBER,
  SRV_USS_LOGNAME      VARCHAR2(50 BYTE),
  SRV_USS_SL_TYPE      VARCHAR2(10 BYTE),
  SRV_SPEED            NUMBER,
  SRV_TRL_ID           NUMBER(10),
  SRV_RB_FL            VARCHAR2(1 BYTE),
  SRV_PRV_ID           NUMBER,
  SRV_SESS_NUM         NUMBER(5),
  SRV_MD_ID            NUMBER,
  SRV_DESC             VARCHAR2(2000 BYTE)
)
NOCOMPRESS 
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    5
INITRANS   30
MAXTRANS   255
STORAGE    (
            INITIAL          10M
            NEXT             300M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING
PARTITION BY RANGE (SRV_DATE)
(  
  PARTITION PART2012_02 VALUES LESS THAN (TO_DATE(' 2012-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_03 VALUES LESS THAN (TO_DATE(' 2012-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_04 VALUES LESS THAN (TO_DATE(' 2012-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_05 VALUES LESS THAN (TO_DATE(' 2012-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_06 VALUES LESS THAN (TO_DATE(' 2012-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_07 VALUES LESS THAN (TO_DATE(' 2012-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_08 VALUES LESS THAN (TO_DATE(' 2012-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_09 VALUES LESS THAN (TO_DATE(' 2012-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_10 VALUES LESS THAN (TO_DATE(' 2012-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_11 VALUES LESS THAN (TO_DATE(' 2012-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_12 VALUES LESS THAN (TO_DATE(' 2013-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   1
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_01 VALUES LESS THAN (TO_DATE(' 2013-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_02 VALUES LESS THAN (TO_DATE(' 2013-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_03 VALUES LESS THAN (TO_DATE(' 2013-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_04 VALUES LESS THAN (TO_DATE(' 2013-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_05 VALUES LESS THAN (TO_DATE(' 2013-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_06 VALUES LESS THAN (TO_DATE(' 2013-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_07 VALUES LESS THAN (TO_DATE(' 2013-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_08 VALUES LESS THAN (TO_DATE(' 2013-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_09 VALUES LESS THAN (TO_DATE(' 2013-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_10 VALUES LESS THAN (TO_DATE(' 2013-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_11 VALUES LESS THAN (TO_DATE(' 2013-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_12 VALUES LESS THAN (TO_DATE(' 2014-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_01 VALUES LESS THAN (TO_DATE(' 2014-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_02 VALUES LESS THAN (TO_DATE(' 2014-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_03 VALUES LESS THAN (TO_DATE(' 2014-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_04 VALUES LESS THAN (TO_DATE(' 2014-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_05 VALUES LESS THAN (TO_DATE(' 2014-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_06 VALUES LESS THAN (TO_DATE(' 2014-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_07 VALUES LESS THAN (TO_DATE(' 2014-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_08 VALUES LESS THAN (TO_DATE(' 2014-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_09 VALUES LESS THAN (TO_DATE(' 2014-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_10 VALUES LESS THAN (TO_DATE(' 2014-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_11 VALUES LESS THAN (TO_DATE(' 2014-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_12 VALUES LESS THAN (TO_DATE(' 2015-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_01 VALUES LESS THAN (TO_DATE(' 2015-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_02 VALUES LESS THAN (TO_DATE(' 2015-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_03 VALUES LESS THAN (TO_DATE(' 2015-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_04 VALUES LESS THAN (TO_DATE(' 2015-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05 VALUES LESS THAN (TO_DATE(' 2015-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06 VALUES LESS THAN (TO_DATE(' 2015-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07 VALUES LESS THAN (TO_DATE(' 2015-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08 VALUES LESS THAN (TO_DATE(' 2015-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09 VALUES LESS THAN (TO_DATE(' 2015-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10 VALUES LESS THAN (TO_DATE(' 2015-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11 VALUES LESS THAN (TO_DATE(' 2015-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12 VALUES LESS THAN (TO_DATE(' 2016-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01 VALUES LESS THAN (TO_DATE(' 2016-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_02 VALUES LESS THAN (TO_DATE(' 2016-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_03 VALUES LESS THAN (TO_DATE(' 2016-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_04 VALUES LESS THAN (TO_DATE(' 2016-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_05 VALUES LESS THAN (TO_DATE(' 2016-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_06 VALUES LESS THAN (TO_DATE(' 2016-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_07 VALUES LESS THAN (TO_DATE(' 2016-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_08 VALUES LESS THAN (TO_DATE(' 2016-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_09 VALUES LESS THAN (TO_DATE(' 2016-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_10 VALUES LESS THAN (TO_DATE(' 2016-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_11 VALUES LESS THAN (TO_DATE(' 2016-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_12 VALUES LESS THAN (TO_DATE(' 2017-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_01 VALUES LESS THAN (TO_DATE(' 2017-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_02 VALUES LESS THAN (TO_DATE(' 2017-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_03 VALUES LESS THAN (TO_DATE(' 2017-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_04 VALUES LESS THAN (TO_DATE(' 2017-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_05 VALUES LESS THAN (TO_DATE(' 2017-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_06 VALUES LESS THAN (TO_DATE(' 2017-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_07 VALUES LESS THAN (TO_DATE(' 2017-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_08 VALUES LESS THAN (TO_DATE(' 2017-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_09 VALUES LESS THAN (TO_DATE(' 2017-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_10 VALUES LESS THAN (TO_DATE(' 2017-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_11 VALUES LESS THAN (TO_DATE(' 2017-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_12 VALUES LESS THAN (TO_DATE(' 2018-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_01 VALUES LESS THAN (TO_DATE(' 2018-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_02 VALUES LESS THAN (TO_DATE(' 2018-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_03 VALUES LESS THAN (TO_DATE(' 2018-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_04 VALUES LESS THAN (TO_DATE(' 2018-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_05 VALUES LESS THAN (TO_DATE(' 2018-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_06 VALUES LESS THAN (TO_DATE(' 2018-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_07 VALUES LESS THAN (TO_DATE(' 2018-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_08 VALUES LESS THAN (TO_DATE(' 2018-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_09 VALUES LESS THAN (TO_DATE(' 2018-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_10 VALUES LESS THAN (TO_DATE(' 2018-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_11 VALUES LESS THAN (TO_DATE(' 2018-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_12 VALUES LESS THAN (TO_DATE(' 2019-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_01 VALUES LESS THAN (TO_DATE(' 2019-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_02 VALUES LESS THAN (TO_DATE(' 2019-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_03 VALUES LESS THAN (TO_DATE(' 2019-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_04 VALUES LESS THAN (TO_DATE(' 2019-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_05 VALUES LESS THAN (TO_DATE(' 2019-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_06 VALUES LESS THAN (TO_DATE(' 2019-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_07 VALUES LESS THAN (TO_DATE(' 2019-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_08 VALUES LESS THAN (TO_DATE(' 2019-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_09 VALUES LESS THAN (TO_DATE(' 2019-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_10 VALUES LESS THAN (TO_DATE(' 2019-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_11 VALUES LESS THAN (TO_DATE(' 2019-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_12 VALUES LESS THAN (TO_DATE(' 2020-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_01 VALUES LESS THAN (TO_DATE(' 2020-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_02 VALUES LESS THAN (TO_DATE(' 2020-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_03 VALUES LESS THAN (TO_DATE(' 2020-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_04 VALUES LESS THAN (TO_DATE(' 2020-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_05 VALUES LESS THAN (TO_DATE(' 2020-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_06 VALUES LESS THAN (TO_DATE(' 2020-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_07 VALUES LESS THAN (TO_DATE(' 2020-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_08 VALUES LESS THAN (TO_DATE(' 2020-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_09 VALUES LESS THAN (TO_DATE(' 2020-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_10 VALUES LESS THAN (TO_DATE(' 2020-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_11 VALUES LESS THAN (TO_DATE(' 2020-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_12 VALUES LESS THAN (TO_DATE(' 2021-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_01 VALUES LESS THAN (TO_DATE(' 2021-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_02 VALUES LESS THAN (TO_DATE(' 2021-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_03 VALUES LESS THAN (TO_DATE(' 2021-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_04 VALUES LESS THAN (TO_DATE(' 2021-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_05 VALUES LESS THAN (TO_DATE(' 2021-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_06 VALUES LESS THAN (TO_DATE(' 2021-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_07 VALUES LESS THAN (TO_DATE(' 2021-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_08 VALUES LESS THAN (TO_DATE(' 2021-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_09 VALUES LESS THAN (TO_DATE(' 2021-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_10 VALUES LESS THAN (TO_DATE(' 2021-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_11 VALUES LESS THAN (TO_DATE(' 2021-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_12 VALUES LESS THAN (TO_DATE(' 2022-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_01 VALUES LESS THAN (TO_DATE(' 2022-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_02 VALUES LESS THAN (TO_DATE(' 2022-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_03 VALUES LESS THAN (TO_DATE(' 2022-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_04 VALUES LESS THAN (TO_DATE(' 2022-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_05 VALUES LESS THAN (TO_DATE(' 2022-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_06 VALUES LESS THAN (TO_DATE(' 2022-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_07 VALUES LESS THAN (TO_DATE(' 2022-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_08 VALUES LESS THAN (TO_DATE(' 2022-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_09 VALUES LESS THAN (TO_DATE(' 2022-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_10 VALUES LESS THAN (TO_DATE(' 2022-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_11 VALUES LESS THAN (TO_DATE(' 2022-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_12 VALUES LESS THAN (TO_DATE(' 2023-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_01 VALUES LESS THAN (TO_DATE(' 2023-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_02 VALUES LESS THAN (TO_DATE(' 2023-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_03 VALUES LESS THAN (TO_DATE(' 2023-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_04 VALUES LESS THAN (TO_DATE(' 2023-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_05 VALUES LESS THAN (TO_DATE(' 2023-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_06 VALUES LESS THAN (TO_DATE(' 2023-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_07 VALUES LESS THAN (TO_DATE(' 2023-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_08 VALUES LESS THAN (TO_DATE(' 2023-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_09 VALUES LESS THAN (TO_DATE(' 2023-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_10 VALUES LESS THAN (TO_DATE(' 2023-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_11 VALUES LESS THAN (TO_DATE(' 2023-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_12 VALUES LESS THAN (TO_DATE(' 2024-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_01 VALUES LESS THAN (TO_DATE(' 2024-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_02 VALUES LESS THAN (TO_DATE(' 2024-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_03 VALUES LESS THAN (TO_DATE(' 2024-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_04 VALUES LESS THAN (TO_DATE(' 2024-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_05 VALUES LESS THAN (TO_DATE(' 2024-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_06 VALUES LESS THAN (TO_DATE(' 2024-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_07 VALUES LESS THAN (TO_DATE(' 2024-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_08 VALUES LESS THAN (TO_DATE(' 2024-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_09 VALUES LESS THAN (TO_DATE(' 2024-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_10 VALUES LESS THAN (TO_DATE(' 2024-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_11 VALUES LESS THAN (TO_DATE(' 2024-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_12 VALUES LESS THAN (TO_DATE(' 2025-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_01 VALUES LESS THAN (TO_DATE(' 2025-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_02 VALUES LESS THAN (TO_DATE(' 2025-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_03 VALUES LESS THAN (TO_DATE(' 2025-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_04 VALUES LESS THAN (TO_DATE(' 2025-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_05 VALUES LESS THAN (TO_DATE(' 2025-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_06 VALUES LESS THAN (TO_DATE(' 2025-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_07 VALUES LESS THAN (TO_DATE(' 2025-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_08 VALUES LESS THAN (TO_DATE(' 2025-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_09 VALUES LESS THAN (TO_DATE(' 2025-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_10 VALUES LESS THAN (TO_DATE(' 2025-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_11 VALUES LESS THAN (TO_DATE(' 2025-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_12 VALUES LESS THAN (TO_DATE(' 2026-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_01 VALUES LESS THAN (TO_DATE(' 2026-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_02 VALUES LESS THAN (TO_DATE(' 2026-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_03 VALUES LESS THAN (TO_DATE(' 2026-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_04 VALUES LESS THAN (TO_DATE(' 2026-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_05 VALUES LESS THAN (TO_DATE(' 2026-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_06 VALUES LESS THAN (TO_DATE(' 2026-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_07 VALUES LESS THAN (TO_DATE(' 2026-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_08 VALUES LESS THAN (TO_DATE(' 2026-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_09 VALUES LESS THAN (TO_DATE(' 2026-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_10 VALUES LESS THAN (TO_DATE(' 2026-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_11 VALUES LESS THAN (TO_DATE(' 2026-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_12 VALUES LESS THAN (TO_DATE(' 2027-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_01 VALUES LESS THAN (TO_DATE(' 2027-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_02 VALUES LESS THAN (TO_DATE(' 2027-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_03 VALUES LESS THAN (TO_DATE(' 2027-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_04 VALUES LESS THAN (TO_DATE(' 2027-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_05 VALUES LESS THAN (TO_DATE(' 2027-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_06 VALUES LESS THAN (TO_DATE(' 2027-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_07 VALUES LESS THAN (TO_DATE(' 2027-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_08 VALUES LESS THAN (TO_DATE(' 2027-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_09 VALUES LESS THAN (TO_DATE(' 2027-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_10 VALUES LESS THAN (TO_DATE(' 2027-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_11 VALUES LESS THAN (TO_DATE(' 2027-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_12 VALUES LESS THAN (TO_DATE(' 2028-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_01 VALUES LESS THAN (TO_DATE(' 2028-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_02 VALUES LESS THAN (TO_DATE(' 2028-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_03 VALUES LESS THAN (TO_DATE(' 2028-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_04 VALUES LESS THAN (TO_DATE(' 2028-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_05 VALUES LESS THAN (TO_DATE(' 2028-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_06 VALUES LESS THAN (TO_DATE(' 2028-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_07 VALUES LESS THAN (TO_DATE(' 2028-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_08 VALUES LESS THAN (TO_DATE(' 2028-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_09 VALUES LESS THAN (TO_DATE(' 2028-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_10 VALUES LESS THAN (TO_DATE(' 2028-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_11 VALUES LESS THAN (TO_DATE(' 2028-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_12 VALUES LESS THAN (TO_DATE(' 2029-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_01 VALUES LESS THAN (TO_DATE(' 2029-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_02 VALUES LESS THAN (TO_DATE(' 2029-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_03 VALUES LESS THAN (TO_DATE(' 2029-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_04 VALUES LESS THAN (TO_DATE(' 2029-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_05 VALUES LESS THAN (TO_DATE(' 2029-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_06 VALUES LESS THAN (TO_DATE(' 2029-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_07 VALUES LESS THAN (TO_DATE(' 2029-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_08 VALUES LESS THAN (TO_DATE(' 2029-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_09 VALUES LESS THAN (TO_DATE(' 2029-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_10 VALUES LESS THAN (TO_DATE(' 2029-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_11 VALUES LESS THAN (TO_DATE(' 2029-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_12 VALUES LESS THAN (TO_DATE(' 2030-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_01 VALUES LESS THAN (TO_DATE(' 2030-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_02 VALUES LESS THAN (TO_DATE(' 2030-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_03 VALUES LESS THAN (TO_DATE(' 2030-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_04 VALUES LESS THAN (TO_DATE(' 2030-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_05 VALUES LESS THAN (TO_DATE(' 2030-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_06 VALUES LESS THAN (TO_DATE(' 2030-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_07 VALUES LESS THAN (TO_DATE(' 2030-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_08 VALUES LESS THAN (TO_DATE(' 2030-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_09 VALUES LESS THAN (TO_DATE(' 2030-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_10 VALUES LESS THAN (TO_DATE(' 2030-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_11 VALUES LESS THAN (TO_DATE(' 2030-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_12 VALUES LESS THAN (TO_DATE(' 2031-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_01 VALUES LESS THAN (TO_DATE(' 2031-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_02 VALUES LESS THAN (TO_DATE(' 2031-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_03 VALUES LESS THAN (TO_DATE(' 2031-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_04 VALUES LESS THAN (TO_DATE(' 2031-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_05 VALUES LESS THAN (TO_DATE(' 2031-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_06 VALUES LESS THAN (TO_DATE(' 2031-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_07 VALUES LESS THAN (TO_DATE(' 2031-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_08 VALUES LESS THAN (TO_DATE(' 2031-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_09 VALUES LESS THAN (TO_DATE(' 2031-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_10 VALUES LESS THAN (TO_DATE(' 2031-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_11 VALUES LESS THAN (TO_DATE(' 2031-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_12 VALUES LESS THAN (TO_DATE(' 2032-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_01 VALUES LESS THAN (TO_DATE(' 2032-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_02 VALUES LESS THAN (TO_DATE(' 2032-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_03 VALUES LESS THAN (TO_DATE(' 2032-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_04 VALUES LESS THAN (TO_DATE(' 2032-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_05 VALUES LESS THAN (TO_DATE(' 2032-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_06 VALUES LESS THAN (TO_DATE(' 2032-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_07 VALUES LESS THAN (TO_DATE(' 2032-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_08 VALUES LESS THAN (TO_DATE(' 2032-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_09 VALUES LESS THAN (TO_DATE(' 2032-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_10 VALUES LESS THAN (TO_DATE(' 2032-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_11 VALUES LESS THAN (TO_DATE(' 2032-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_12 VALUES LESS THAN (TO_DATE(' 2033-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_01 VALUES LESS THAN (TO_DATE(' 2033-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_02 VALUES LESS THAN (TO_DATE(' 2033-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_03 VALUES LESS THAN (TO_DATE(' 2033-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_04 VALUES LESS THAN (TO_DATE(' 2033-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_05 VALUES LESS THAN (TO_DATE(' 2033-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_06 VALUES LESS THAN (TO_DATE(' 2033-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_07 VALUES LESS THAN (TO_DATE(' 2033-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_08 VALUES LESS THAN (TO_DATE(' 2033-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_09 VALUES LESS THAN (TO_DATE(' 2033-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_10 VALUES LESS THAN (TO_DATE(' 2033-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_11 VALUES LESS THAN (TO_DATE(' 2033-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_12 VALUES LESS THAN (TO_DATE(' 2034-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_01 VALUES LESS THAN (TO_DATE(' 2035-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_02 VALUES LESS THAN (TO_DATE(' 2035-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_03 VALUES LESS THAN (TO_DATE(' 2035-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_04 VALUES LESS THAN (TO_DATE(' 2035-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_05 VALUES LESS THAN (TO_DATE(' 2035-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_06 VALUES LESS THAN (TO_DATE(' 2035-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_07 VALUES LESS THAN (TO_DATE(' 2035-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_08 VALUES LESS THAN (TO_DATE(' 2035-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_09 VALUES LESS THAN (TO_DATE(' 2035-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_10 VALUES LESS THAN (TO_DATE(' 2035-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_11 VALUES LESS THAN (TO_DATE(' 2035-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_12 VALUES LESS THAN (TO_DATE(' 2036-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_01 VALUES LESS THAN (TO_DATE(' 2036-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_02 VALUES LESS THAN (TO_DATE(' 2036-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_03 VALUES LESS THAN (TO_DATE(' 2036-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_04 VALUES LESS THAN (TO_DATE(' 2036-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_05 VALUES LESS THAN (TO_DATE(' 2036-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_06 VALUES LESS THAN (TO_DATE(' 2036-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_07 VALUES LESS THAN (TO_DATE(' 2036-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_08 VALUES LESS THAN (TO_DATE(' 2036-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_09 VALUES LESS THAN (TO_DATE(' 2036-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_10 VALUES LESS THAN (TO_DATE(' 2036-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_11 VALUES LESS THAN (TO_DATE(' 2036-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_12 VALUES LESS THAN (TO_DATE(' 2037-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_01 VALUES LESS THAN (TO_DATE(' 2037-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_02 VALUES LESS THAN (TO_DATE(' 2037-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_03 VALUES LESS THAN (TO_DATE(' 2037-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_04 VALUES LESS THAN (TO_DATE(' 2037-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_05 VALUES LESS THAN (TO_DATE(' 2037-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_06 VALUES LESS THAN (TO_DATE(' 2037-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_07 VALUES LESS THAN (TO_DATE(' 2037-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_08 VALUES LESS THAN (TO_DATE(' 2037-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_09 VALUES LESS THAN (TO_DATE(' 2037-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_10 VALUES LESS THAN (TO_DATE(' 2037-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_11 VALUES LESS THAN (TO_DATE(' 2037-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_12 VALUES LESS THAN (TO_DATE(' 2038-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_01 VALUES LESS THAN (TO_DATE(' 2038-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_02 VALUES LESS THAN (TO_DATE(' 2038-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_03 VALUES LESS THAN (TO_DATE(' 2038-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_04 VALUES LESS THAN (TO_DATE(' 2038-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_05 VALUES LESS THAN (TO_DATE(' 2038-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_06 VALUES LESS THAN (TO_DATE(' 2038-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_07 VALUES LESS THAN (TO_DATE(' 2038-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_08 VALUES LESS THAN (TO_DATE(' 2038-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_09 VALUES LESS THAN (TO_DATE(' 2038-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_10 VALUES LESS THAN (TO_DATE(' 2038-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_11 VALUES LESS THAN (TO_DATE(' 2038-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_12 VALUES LESS THAN (TO_DATE(' 2039-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_01 VALUES LESS THAN (TO_DATE(' 2039-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_02 VALUES LESS THAN (TO_DATE(' 2039-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_03 VALUES LESS THAN (TO_DATE(' 2039-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_04 VALUES LESS THAN (TO_DATE(' 2039-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_05 VALUES LESS THAN (TO_DATE(' 2039-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_06 VALUES LESS THAN (TO_DATE(' 2039-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_07 VALUES LESS THAN (TO_DATE(' 2039-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_08 VALUES LESS THAN (TO_DATE(' 2039-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_09 VALUES LESS THAN (TO_DATE(' 2039-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_10 VALUES LESS THAN (TO_DATE(' 2039-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_11 VALUES LESS THAN (TO_DATE(' 2039-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_12 VALUES LESS THAN (TO_DATE(' 2040-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_01 VALUES LESS THAN (TO_DATE(' 2040-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_02 VALUES LESS THAN (TO_DATE(' 2040-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_03 VALUES LESS THAN (TO_DATE(' 2040-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_04 VALUES LESS THAN (TO_DATE(' 2040-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_05 VALUES LESS THAN (TO_DATE(' 2040-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_06 VALUES LESS THAN (TO_DATE(' 2040-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_07 VALUES LESS THAN (TO_DATE(' 2040-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_08 VALUES LESS THAN (TO_DATE(' 2040-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_09 VALUES LESS THAN (TO_DATE(' 2040-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_10 VALUES LESS THAN (TO_DATE(' 2040-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_11 VALUES LESS THAN (TO_DATE(' 2040-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_12 VALUES LESS THAN (TO_DATE(' 2041-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_01 VALUES LESS THAN (TO_DATE(' 2041-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_02 VALUES LESS THAN (TO_DATE(' 2041-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_03 VALUES LESS THAN (TO_DATE(' 2041-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_04 VALUES LESS THAN (TO_DATE(' 2041-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_05 VALUES LESS THAN (TO_DATE(' 2041-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_06 VALUES LESS THAN (TO_DATE(' 2041-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_07 VALUES LESS THAN (TO_DATE(' 2041-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_08 VALUES LESS THAN (TO_DATE(' 2041-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_09 VALUES LESS THAN (TO_DATE(' 2041-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_10 VALUES LESS THAN (TO_DATE(' 2041-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_11 VALUES LESS THAN (TO_DATE(' 2041-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_12 VALUES LESS THAN (TO_DATE(' 2042-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_01 VALUES LESS THAN (TO_DATE(' 2042-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_02 VALUES LESS THAN (TO_DATE(' 2042-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_03 VALUES LESS THAN (TO_DATE(' 2042-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_04 VALUES LESS THAN (TO_DATE(' 2042-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_05 VALUES LESS THAN (TO_DATE(' 2042-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_06 VALUES LESS THAN (TO_DATE(' 2042-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_07 VALUES LESS THAN (TO_DATE(' 2042-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_08 VALUES LESS THAN (TO_DATE(' 2042-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_09 VALUES LESS THAN (TO_DATE(' 2042-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_10 VALUES LESS THAN (TO_DATE(' 2042-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_11 VALUES LESS THAN (TO_DATE(' 2042-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_12 VALUES LESS THAN (TO_DATE(' 2043-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_01 VALUES LESS THAN (TO_DATE(' 2043-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_02 VALUES LESS THAN (TO_DATE(' 2043-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_03 VALUES LESS THAN (TO_DATE(' 2043-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_04 VALUES LESS THAN (TO_DATE(' 2043-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_05 VALUES LESS THAN (TO_DATE(' 2043-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_06 VALUES LESS THAN (TO_DATE(' 2043-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_07 VALUES LESS THAN (TO_DATE(' 2043-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_08 VALUES LESS THAN (TO_DATE(' 2043-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_09 VALUES LESS THAN (TO_DATE(' 2043-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_10 VALUES LESS THAN (TO_DATE(' 2043-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_11 VALUES LESS THAN (TO_DATE(' 2043-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_12 VALUES LESS THAN (TO_DATE(' 2044-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_MAXVALUE VALUES LESS THAN (MAXVALUE)
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          29M
                NEXT             300M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOCACHE
NOPARALLEL
MONITORING
ENABLE ROW MOVEMENT;

COMMENT ON TABLE SIP_KZ.TB_SERVICES IS 'Версия: 1.5';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_ID IS 'Уникальный идентификатор';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_DATE IS 'Дата и время окончания предоставления услуги (дата регистрации услуги в системе)';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_TIME IS 'Кол-во времени в минутах, которое предоставлялась услуга';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_VALUE IS 'Кол-во штук либо байт предоставленной услуги';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_COST IS 'Стоимость услуги с учетом всех коэффициентов и скидок';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_TASKID IS 'Идентификатор задачи, формируемый по правилу:';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_BASE_COST IS 'Базовая стоимость оказанной услуги (без скидок)';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_CNT_ID IS 'Идентификатор счетчика';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_SRD_CODE IS 'Код услуги';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_INT_CODE IS 'Код типа интерфейса';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_TRS_ID IS 'Идентификатор услуги в тарифном плане';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_AB_ID IS 'Идентификатор абонента';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_USER_NAME IS 'Logname';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_TFP_CODE IS 'Код тарифного плана по которому была тарифицированна данная услуга';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_PORT IS 'Порт';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_NAS IS 'НАС';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_IP IS 'IP pool';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_CALLING_STATION IS 'Телефон';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_INPUTOCTETS IS 'Количество байт входящих';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_OUTPUTOCTETS IS 'Количество байт исходящих';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_USS_LOGNAME IS 'Имя логина для сервиса';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_USS_SL_TYPE IS 'Тип сервиса';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_SPEED IS 'Скорость соединения';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_PRV_ID IS 'ID провайдера';

COMMENT ON COLUMN SIP_KZ.TB_SERVICES.SRV_SESS_NUM IS 'Номер сессии';



CREATE INDEX SIP_KZ.SRV_AB_FK_I ON SIP_KZ.TB_SERVICES
(SRV_AB_ID, SRV_DATE)
  PCTFREE    5
  INITRANS   30
  MAXTRANS   255
  STORAGE    (
              INITIAL          16K
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    80
    INITRANS   20
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             704K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_MAXVALUE
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOPARALLEL;


CREATE INDEX SIP_KZ.SRV_CNT_ID_IX ON SIP_KZ.TB_SERVICES
(SRV_CNT_ID)
  PCTFREE    5
  INITRANS   30
  MAXTRANS   255
  STORAGE    (
              INITIAL          16K
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    80
    INITRANS   20
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             704K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_MAXVALUE
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOPARALLEL;


CREATE INDEX SIP_KZ.SRV_PK ON SIP_KZ.TB_SERVICES
(SRV_ID)
  PCTFREE    5
  INITRANS   5
  MAXTRANS   255
  STORAGE    (
              INITIAL          512K
              NEXT             150M
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    80
    INITRANS   20
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             704K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_MAXVALUE
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             150M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOPARALLEL;


CREATE INDEX SIP_KZ.SRV_US_FK_I ON SIP_KZ.TB_SERVICES
(SRV_USER_NAME, SRV_DATE)
  PCTFREE    5
  INITRANS   30
  MAXTRANS   255
  STORAGE    (
              INITIAL          16K
              BUFFER_POOL      DEFAULT
              FLASH_CACHE      DEFAULT
              CELL_FLASH_CACHE DEFAULT
             )
LOGGING
LOCAL (  
  PARTITION PART2012_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    80
    INITRANS   20
    MAXTRANS   255
    STORAGE    (
                INITIAL          16K
                NEXT             704K
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2012_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2013_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_02
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_03
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_04
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_05
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_06
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_07
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_08
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_09
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_10
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_11
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2014_12
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_01
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2015_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART2016_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2016_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2017_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2018_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2019_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2020_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2021_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2022_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2023_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2024_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2025_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2026_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2027_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2028_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2029_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2030_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2031_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2032_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2033_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2035_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2036_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2037_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2038_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2039_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2040_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2041_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2042_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_01
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_02
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_03
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_04
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_05
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_06
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_07
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_08
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_09
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_10
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_11
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_2043_12
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               ),  
  PARTITION PART_MAXVALUE
    NOLOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   5
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
                MAXSIZE          UNLIMITED
                MINEXTENTS       1
                MAXEXTENTS       UNLIMITED
                BUFFER_POOL      DEFAULT
                FLASH_CACHE      DEFAULT
                CELL_FLASH_CACHE DEFAULT
               )
)
NOPARALLEL;


--SIP_KZ.PROVIDERS не создана
ALTER TABLE SIP_KZ.TB_SERVICES ADD (
  CONSTRAINT SRV_PRV_FK 
  FOREIGN KEY (SRV_PRV_ID) 
  REFERENCES SIP_KZ.PROVIDERS (PRV_ID)
  ENABLE VALIDATE);
