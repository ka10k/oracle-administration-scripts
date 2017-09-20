DROP TABLE SIP_W.TB_ACCOUNTS_JN CASCADE CONSTRAINTS;

CREATE TABLE SIP_W.TB_ACCOUNTS_JN
(
  JACC_OPERATION             CHAR(3 BYTE)       NOT NULL,
  JACC_ORACLE_USER           VARCHAR2(30 BYTE)  NOT NULL,
  JACC_DATETIME              DATE               NOT NULL,
  JACC_APPLN                 VARCHAR2(30 BYTE),
  JACC_SESSION               NUMBER(38),
  JACC_AB_ID                 NUMBER(10)         NOT NULL,
  JACC_CURRENT_BALANCE       NUMBER             NOT NULL,
  JACC_PERIOD_DATE           DATE,
  JACC_START_BALANCE         NUMBER,
  JACC_CARD_EXPIR_DATE       DATE,
  JACC_CARD_BALANCE          NUMBER,
  JACC_WORK_RESERVED_AMOUNT  NUMBER,
  ACC_PRV_ID                 NUMBER,
  JACC_PAY_BAL               NUMBER,
  JACC_DEBT                  NUMBER,
  JACC_DEBT_DATE             DATE,
  JACC_ID                    INTEGER,
  JACC_SRV_ID                INTEGER,
  JACC_INV_ID                INTEGER,
  JACC_PAY_ID                INTEGER,
  JACC_PB_ID                 INTEGER,
  JACC_ABM_ID                INTEGER
)
TABLESPACE USERS
RESULT_CACHE (MODE DEFAULT)
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          4224K
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
NOCOMPRESS 
NOCACHE
NOPARALLEL
MONITORING;

COMMENT ON TABLE SIP_W.TB_ACCOUNTS_JN IS 'Версия: 1.1';

COMMENT ON COLUMN SIP_W.TB_ACCOUNTS_JN.ACC_PRV_ID IS 'ID провайдера';



CREATE INDEX SIP_W.JACC_DATETIME_IX ON SIP_W.TB_ACCOUNTS_JN
(JACC_DATETIME)
LOGGING
TABLESPACE USERS
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE INDEX SIP_W.JN_ACC_AB_ID$I ON SIP_W.TB_ACCOUNTS_JN
(JACC_AB_ID)
LOGGING
TABLESPACE INDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MAXSIZE          UNLIMITED
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
            FLASH_CACHE      DEFAULT
            CELL_FLASH_CACHE DEFAULT
           )
NOPARALLEL;


CREATE OR REPLACE SYNONYM NN_MIAS.SIP_W_TB_ACCOUNTS_JN FOR SIP_W.TB_ACCOUNTS_JN;


BEGIN
  SYS.DBMS_RLS.DROP_POLICY (
    object_schema    => 'SIP_W'
    ,object_name     => 'TB_ACCOUNTS_JN'
    ,policy_name     => 'ACC_JN_INSUPDEL');
END;
/

BEGIN
  SYS.DBMS_RLS.ADD_POLICY     (
    object_schema          => 'SIP_W'
    ,object_name           => 'TB_ACCOUNTS_JN'
    ,policy_name           => 'ACC_JN_INSUPDEL'
    ,function_schema       => 'SIP_W'
    ,policy_function       => 'CHK_DATABASE.ACC_JN_INSUPDEL_WHERE'
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
    ,object_name     => 'TB_ACCOUNTS_JN'
    ,policy_name     => 'EXCLUD_TAB_TB_ACCNT_JN');
END;
/

BEGIN
  SYS.DBMS_RLS.ADD_POLICY     (
    object_schema          => 'SIP_W'
    ,object_name           => 'TB_ACCOUNTS_JN'
    ,policy_name           => 'EXCLUD_TAB_TB_ACCNT_JN'
    ,function_schema       => 'SIP_MIGR'
    ,policy_function       => 'EXCLUDE_TAB_TB_ACCOUNTS_JN'
    ,statement_types       => 'SELECT,INSERT,UPDATE,DELETE'
    ,policy_type           => dbms_rls.dynamic
    ,long_predicate        => TRUE
    ,update_check          => FALSE
    ,static_policy         => FALSE
    ,enable                => TRUE );
END;
/



BEGIN
  SYS.DBMS_RLS.DROP_POLICY (
    object_schema    => 'SIP_W'
    ,object_name     => 'TB_ACCOUNTS_JN'
    ,policy_name     => 'ACC_JN_SEL');
END;
/

BEGIN
  SYS.DBMS_RLS.ADD_POLICY     (
    object_schema          => 'SIP_W'
    ,object_name           => 'TB_ACCOUNTS_JN'
    ,policy_name           => 'ACC_JN_SEL'
    ,function_schema       => 'SIP_W'
    ,policy_function       => 'CHK_DATABASE.ACC_JN_SEL_WHERE'
    ,statement_types       => 'SELECT'
    ,policy_type           => dbms_rls.shared_context_sensitive
    ,long_predicate        => FALSE
    ,update_check          => FALSE
    ,static_policy         => FALSE
    ,enable                => TRUE );
END;
/



GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO CRMSIP_SIP;

GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO NN_MIAS;

GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO SELECT_SIP_W;

GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO SIP_IBS;

GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO SIP_PROFIT_SHPD;

GRANT DELETE, INSERT, UPDATE ON SIP_W.TB_ACCOUNTS_JN TO SIP_RAD;

GRANT SELECT ON SIP_W.TB_ACCOUNTS_JN TO SIP_SIBIR;
