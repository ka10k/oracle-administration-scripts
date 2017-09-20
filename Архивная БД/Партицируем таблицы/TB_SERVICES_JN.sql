--DROP TABLE SIP_W.TB_SERVICES_JN CASCADE CONSTRAINTS;

CREATE TABLE SIP_W.TB_SERVICES_JN
(
  JN_OPERATION    CHAR(3 BYTE)                  NOT NULL,
  JN_ORACLE_USER  VARCHAR2(30 BYTE)             NOT NULL,
  JN_DATETIME     DATE                          NOT NULL,
  JN_NOTES        VARCHAR2(240 BYTE),
  JN_APPLN        VARCHAR2(30 BYTE),
  JN_SESSION      NUMBER(38),
  SRV_ID          NUMBER,
  SRV_DATE        DATE,
  SRV_VALUE       NUMBER,
  SRV_SRD_CODE    VARCHAR2(15 BYTE),
  SRV_INT_CODE    VARCHAR2(10 BYTE),
  SRV_TRS_ID      NUMBER,
  SRV_AB_ID       NUMBER(10),
  SRV_USER_NAME   VARCHAR2(50 BYTE),
  SRV_TFP_CODE    VARCHAR2(15 BYTE),
  SRV_PRV_ID      NUMBER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          384K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
LOGGING 

PARTITION BY RANGE (JN_DATETIME)
(  
  PARTITION PART2014_12 VALUES LESS THAN (TO_DATE(' 2015-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    LOGGING
    NOCOMPRESS 
    TABLESPACE USERS
    PCTFREE    5
    INITRANS   30
    MAXTRANS   255
    STORAGE    (
                INITIAL          64K
                NEXT             1M
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
    INITRANS   5
    MAXTRANS   255
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




NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE SIP_W.TB_SERVICES_JN IS 'Версия: 1.1';

COMMENT ON COLUMN SIP_W.TB_SERVICES_JN.SRV_PRV_ID IS 'ID провайдера';






CREATE OR REPLACE SYNONYM NN_MIAS.SIP_W_TB_SERVICES_JN FOR SIP_W.TB_SERVICES_JN;


BEGIN
  SYS.DBMS_RLS.DROP_POLICY (
    object_schema    => 'SIP_W'
    ,object_name     => 'TB_SERVICES_JN'
    ,policy_name     => 'SRV_JN_INSUPDEL');
END;
/

BEGIN
  SYS.DBMS_RLS.ADD_POLICY     (
    object_schema          => 'SIP_W'
    ,object_name           => 'TB_SERVICES_JN'
    ,policy_name           => 'SRV_JN_INSUPDEL'
    ,function_schema       => 'SIP_W'
    ,policy_function       => 'CHK_DATABASE.SRV_INSUPDEL_WHERE'
    ,statement_types       => 'INSERT,UPDATE,DELETE'
    ,policy_type           => dbms_rls.shared_context_sensitive
    ,long_predicate        => FALSE
    ,update_check          => TRUE
    ,static_policy         => FALSE
    ,enable                => TRUE );
END;
/



BEGIN
  SYS.DBMS_RLS.DROP_POLICY (
    object_schema    => 'SIP_W'
    ,object_name     => 'TB_SERVICES_JN'
    ,policy_name     => 'SRV_JN_SEL');
END;
/

BEGIN
  SYS.DBMS_RLS.ADD_POLICY     (
    object_schema          => 'SIP_W'
    ,object_name           => 'TB_SERVICES_JN'
    ,policy_name           => 'SRV_JN_SEL'
    ,function_schema       => 'SIP_W'
    ,policy_function       => 'CHK_DATABASE.SRV_SEL_WHERE'
    ,statement_types       => 'SELECT'
    ,policy_type           => dbms_rls.shared_context_sensitive
    ,long_predicate        => FALSE
    ,update_check          => FALSE
    ,static_policy         => FALSE
    ,enable                => TRUE );
END;
/



GRANT SELECT ON SIP_W.TB_SERVICES_JN TO CRMSIP_SIP;

GRANT SELECT ON SIP_W.TB_SERVICES_JN TO NN_MIAS;

GRANT SELECT ON SIP_W.TB_SERVICES_JN TO SELECT_SIP_W;

GRANT SELECT ON SIP_W.TB_SERVICES_JN TO SIP_IBS;

GRANT SELECT ON SIP_W.TB_SERVICES_JN TO SIP_MIGR WITH GRANT OPTION;

GRANT DELETE, INSERT, UPDATE ON SIP_W.TB_SERVICES_JN TO SIP_RAD;

GRANT SELECT ON SIP_W.TB_SERVICES_JN TO SIP_SIBIR;
