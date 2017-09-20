select * from sip_w.acs_operators--, sip_w.acs_session_log
where AOP_DESCRIPTION not like '%не активен%' and AOP_DESCRIPTION not like '%заблокир%' and AOP_DESCRIPTION not like '%блокир%'
and AOP_DESCRIPTION not like '%закрыт%' and AOP_DESCRIPTION not like '%Закрыт%' and AOP_DESCRIPTION not like '%прекращен%' and AOP_DESCRIPTION not like '%Блокир%'
and AOP_DESCRIPTION not like '%Увол%'
and AOP_DESCRIPTION not like '%увол%'
and AOP_DESCRIPTION not like '%прекращён%' 
and AOP_DESCRIPTION not like '%Прекращён%'
--and sip_w.acs_operators.AOP_ID = sip_w.acs_session_log.ASL_AOP_ID