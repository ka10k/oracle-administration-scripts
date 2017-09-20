select max(ab_id), (select last_number from user_sequences where sequence_name = 'AB_SEQ'), 
(select last_number from user_sequences where sequence_name = 'AB_SEQ') - max(ab_id) diff
from abonent group by 1;

select max(bl_id), (select last_number from user_sequences where sequence_name = 'BL_SEQ'), 
(select last_number from user_sequences where sequence_name = 'BL_SEQ') - max(bl_id) diff
from ct_blocking group by 1;

select max(asl_id), (select last_number from user_sequences where sequence_name = 'ACS_SESSION_LOG_SEQ'), 
(select last_number from user_sequences where sequence_name = 'ACS_SESSION_LOG_SEQ') - max(asl_id) diff
from ACS_SESSION_LOG group by 1;

select max(mmm_id), (select last_number from user_sequences where sequence_name = 'MS_MAIL_MANAGER_SEQ'), 
(select last_number from user_sequences where sequence_name = 'MS_MAIL_MANAGER_SEQ') - max(mmm_id) diff
from MS_MAIL_MANAGER group by 1;


select max(MQE_ID), (select last_number from user_sequences where sequence_name = 'MS_QUEUE_EVENTS_SEQ'), 
(select last_number from user_sequences where sequence_name = 'MS_QUEUE_EVENTS_SEQ') - max(MQE_ID) diff
from MS_QUEUE_EVENTS group by 1;

select max(ENV_N), (select last_number from user_sequences where sequence_name = 'ENV_N_SEQ'), 
(select last_number from user_sequences where sequence_name = 'ENV_N_SEQ') - max(ENV_N) diff
from TB_ENVELOPES group by 1;

-----
select max(cmlm_id), (select last_number from user_sequences where sequence_name = upper('cmlm_id_seq')), 
(select last_number from user_sequences where sequence_name = upper('cmlm_id_seq')) - max(cmlm_id) diff
from cm_log_messages group by 1;


select max(itvpqp_id), (select last_number from user_sequences where sequence_name = upper('itvpqp_seq')), 
(select last_number from user_sequences where sequence_name = upper('itvpqp_seq')) - max(itvpqp_id) diff
from iptv_pq_params group by 1;


--select max(ITVPQ_ID), (select last_number from user_sequences where sequence_name = upper('itvpq_seq')), 
--(select last_number from user_sequences where sequence_name = upper('itvpq_seq')) - max(ITVPQ_ID) diff
--from iptv_process_queue group by 1;


select max(ITVSCT_ID), (select last_number from user_sequences where sequence_name = upper('ITVSCT_SEQ')), 
(select last_number from user_sequences where sequence_name = upper('ITVSCT_SEQ')) - max(ITVSCT_ID) diff
from iptv_sc_transactions group by 1;

select max(usa_id), (select last_number from user_sequences where sequence_name = upper('usa_seq')), 
(select last_number from user_sequences where sequence_name = upper('usa_seq')) - max(usa_id) diff
from tb_user_serv_attrs group by 1;

select max(u2u_id), (select last_number from user_sequences where sequence_name = upper('u2u_seq')), 
(select last_number from user_sequences where sequence_name = upper('u2u_seq')) - max(u2u_id) diff
from tb_uss_2_uss group by 1;


select max(CMLH_ID), (select last_number from user_sequences where sequence_name = upper('CMLH_ID_SEQ')), 
(select last_number from user_sequences where sequence_name = upper('CMLH_ID_SEQ')) - max(CMLH_ID) diff
from cm_log_headers group by 1;


select max(inv_ID), (select last_number from user_sequences where sequence_name = upper('inv_seq')), 
(select last_number from user_sequences where sequence_name = upper('inv_seq')) - max(inv_ID) diff
from tb_invoices group by 1;


select max(mqe_id), (select last_number from user_sequences where sequence_name = upper('ms_queue_events_seq')), 
(select last_number from user_sequences where sequence_name = upper('ms_queue_events_seq')) - max(mqe_id) diff
from ms_queue_events group by 1;


select max(cnt_id), (select last_number from user_sequences where sequence_name = upper('cnt_seq')), 
(select last_number from user_sequences where sequence_name = upper('cnt_seq')) - max(cnt_id) diff
from tb_counters group by 1;

select max(bl_id), (select last_number from user_sequences where sequence_name = upper('bl_seq')), 
(select last_number from user_sequences where sequence_name = upper('bl_seq')) - max(bl_id) diff
from ct_blocking group by 1;

------------mine----------
select max(CMLM_ID), (select last_number from user_sequences where sequence_name = upper('CMLM_ID_SEQ')), 
(select last_number from user_sequences where sequence_name = upper('CMLM_ID_SEQ')) - max(CMLM_ID) diff
from CM_LOG_MESSAGES group by 1;

select max(ITVTA_ID), (select last_number from user_sequences where sequence_name = upper('ITVTA_SEQ')), 
(select last_number from user_sequences where sequence_name = upper('ITVTA_SEQ')) - max(ITVTA_ID) diff
from SIP_W.IPTV_TRANSACTION_ACTIONS group by 1;

/*
declare 
i number;
BEGIN
  FOR item IN 1..40
  
  LOOP
      select ITVTA_SEQ.nextval into i from dual;
      --select ITVSCT_SEQ.nextval into i from dual;
      --select INV_SEQ.nextval into i from dual;
      --select CNT_SEQ.nextval into i from dual;
    DBMS_OUTPUT.PUT_LINE(item);
  END LOOP;
END;

*/