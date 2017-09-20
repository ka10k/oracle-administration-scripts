select * from (
         select
          ash.session_id||','||ash.SESSION_SERIAL#         event,
          count(*)    total,
      sum(decode(ash.wait_class,'Other',1,0))            other,
      sum(decode(ash.wait_class,'Network',1,0))          net,
      sum(decode(ash.wait_class,'Application',1,0))      app,
      sum(decode(ash.wait_class,'Administration',1,0))   admin,
      sum(decode(ash.wait_class,'Cluster',1,0))      clust,
      sum(decode(ash.wait_class,'Concurrency',1,0))      concur,
      sum(decode(ash.wait_class,'Configuration',1,0))    config,
      sum(decode(ash.wait_class,'Commit',1,0))           commit,
      sum(decode(ash.wait_class,'System I/O',1,0))       s_io,
      sum(decode(ash.wait_class,'User I/O',1,0))         uio,
      sum(decode(ash.wait_class,'ON CPU',1,0))        cpu,
      sum(decode(ash.wait_class,'BCPU',1,0))        bcpu,
      nvl(u.username,ash.session_id||'#'||ash.SESSION_SERIAL#),
      ash.program
         from
              ( select
                  sql_id,
                  user_id,
                  session_id,
                  sample_id,
                  session_serial#,
                  program,
                  decode(session_state,'ON CPU',
                      decode(session_type,'BACKGROUND','BCPU','ON CPU')
          , wait_class)  wait_class
             from  v$active_session_history
             --from  ash_dump
         where
                   sample_time >= to_date('245691035025','JSSSSS') and
                   sample_time <= to_date('245691035910','JSSSSS')
       union all
               select
                  sql_id,
                  user_id,
                  session_id,
                  sample_id,
                  session_serial#,
                  program,
                  decode(session_state,'ON CPU',
                      decode(session_type,'BACKGROUND','BCPU','ON CPU')
          , wait_class)  wait_class
             from  dba_hist_active_sess_history
         where
                   sample_time >= to_date('245691035025','JSSSSS') and
                   sample_time <= to_date('245691035910','JSSSSS')
         )  ash,
          dba_users u
         where
           u.user_id(+)=ash.user_id
                 -- and  sql_id = '6gvch1xu9ca3g'
           /* public(ash,sql) contains sql_id =
                 and public(ash,sqlid)
        */
      group by ash.session_id, ash.session_serial#,ash.program, u.username
    )
    order by total desc
