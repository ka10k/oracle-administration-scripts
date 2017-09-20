--select * from dba_tables where LOGGING='NO' and TEMPORARY='NO';

--select min(SRV_ID),max(SRV_ID),count(*) from TB_SERVICES_DEL@SIPARCH;
--select min(SRV_ID),max(SRV_ID),count(*) from SIP_W.TB_SERVICES_DEL;

--select * from TB_SERVICES_DEL@SIPARCH where SRV_ID not in (select SRV_ID from SIP_W.TB_SERVICES_DEL);


select count(*) 
from 
( 
( select * from TB_SERVICES_DEL@SIPARCH 
minus 
select * from SIP_W.TB_SERVICES_DEL ) 
union all 
( select * from SIP_W.TB_SERVICES_DEL 
minus 
select * from TB_SERVICES_DEL@SIPARCH ) 
) 
