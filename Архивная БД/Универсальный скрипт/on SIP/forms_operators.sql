select * from sip_w.acs_operators--, sip_w.acs_session_log
where AOP_DESCRIPTION not like '%�� �������%' and AOP_DESCRIPTION not like '%��������%' and AOP_DESCRIPTION not like '%������%'
and AOP_DESCRIPTION not like '%������%' and AOP_DESCRIPTION not like '%������%' and AOP_DESCRIPTION not like '%���������%' and AOP_DESCRIPTION not like '%������%'
and AOP_DESCRIPTION not like '%����%'
and AOP_DESCRIPTION not like '%����%'
and AOP_DESCRIPTION not like '%���������%' 
and AOP_DESCRIPTION not like '%���������%'
--and sip_w.acs_operators.AOP_ID = sip_w.acs_session_log.ASL_AOP_ID