select event, count(*) total, wait_class
       from ( select decode(session_state,'ON CPU', decode(session_type,'BACKGROUND','BCPU','CPU')
 ,event) event, replace(translate( decode(session_state,
 'ON CPU',decode(session_type,'BACKGROUND','BCPU','CPU'),
 wait_class) ,' $','____'),'/') wait_class
 from v$active_session_history
 where
 sample_time >= to_date('245691035025','JSSSSS') and
 sample_time <= to_date('245691035910','JSSSSS')
 union all
 select decode(session_state,'ON CPU', decode(session_type,'BACKGROUND','BCPU','CPU')
 ,event) event, replace(translate( decode(session_state, 'ON CPU',decode(session_type,'BACKGROUND','BCPU','CPU'),
 wait_class) ,' $','____'),'/') wait_class
 from  dba_hist_active_sess_history where
 sample_time >= to_date('245691035025','JSSSSS') and
 sample_time <= to_date('245691035910','JSSSSS'))
 group by event, wait_class
       order by total desc

