--SIP_W.TB_SERVICES_JN2 временная, сейчас пишется в нее

--create table SIP_W.TB_SERVICES_JN_OLD_DATA as select * from SIP_W.TB_SERVICES_JN;

--truncate table SIP_W.TB_SERVICES_JN;
--insert /*+ APPEND */ into SIP_W.TB_SERVICES_JN select /*+ parallel(8) */ * from SIP_W.TB_SERVICES_JN_OLD_DATA;
--commit;

--insert /*+ APPEND */ into SIP_W.TB_SERVICES_JN select /*+ parallel(8) */ * from SIP_W.TB_SERVICES_JN2;
--commit;

