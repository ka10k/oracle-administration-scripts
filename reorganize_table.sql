
ALTER SESSION SET ddl_lock_timeout = 300;

alter table SIP_W.TB_WTMPS_ACTIVE move tablespace USERS NOLOGGING PARALLEL 8;

ALTER SESSION SET ddl_lock_timeout = 0;
commit;

Alter index SIP_W.TWA_PK rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_PK noparallel;

Alter index SIP_W.TWA_UK rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_UK noparallel;

Alter index SIP_W.TWA_US_IND rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_US_IND noparallel;

Alter index SIP_W.TWA_UN_TWA_CM rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_UN_TWA_CM noparallel;

Alter index SIP_W.TWA_IP rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_IP noparallel;

Alter index SIP_W.TWA_INDX1 rebuild
TABLESPACE INDX
Parallel (Degree 8)
online;
Alter index SIP_W.TWA_INDX1 noparallel;



-- 
С уважением,
Гришин Александр Геннадьевич

Департамент эксплуатации технической инфраструктуры
Отдел организации эксплуатации технической инфраструктуры информационных технологий
Макрорегиональный филиал "Волга"
ОАО "Ростелеком"
тел.моб.:+7(951)913-93-11
тел.раб.:+7(831)437-51-05
a.grishin@volga.rt.ru

