
select indx,
       component_id,
       host_address,
       originating_timestamp,
       message_text
 from  v$diag_alert_ext
  where originating_timestamp > SYSTIMESTAMP - INTERVAL '1' MINUTE
  order by indx desc


--select * from v$diag_alert_ext order by 4 desc
--select * from dual;