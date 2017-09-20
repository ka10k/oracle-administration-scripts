select indx,
       component_id,
       host_address,
       originating_timestamp,
       message_text
 from  v$diag_alert_ext order by 4 desc
