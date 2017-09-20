select * from (
       select
          sql_id,
          count(*)                                       total,
      sum(decode(wait_class,'Other',1,0))            other,
      sum(decode(wait_class,'Network',1,0))          net,
      sum(decode(wait_class,'Application',1,0))      app,
      sum(decode(wait_class,'Administration',1,0))   admin,
      sum(decode(wait_class,'Cluster',1,0))      clust,
      sum(decode(wait_class,'Concurrency',1,0))      concur,
      sum(decode(wait_class,'Configuration',1,0))    config,
      sum(decode(wait_class,'Commit',1,0))           commit,
      sum(decode(wait_class,'System I/O',1,0))       s_io,
      sum(decode(wait_class,'User I/O',1,0))         uio,
      sum(decode(wait_class,'ON CPU',1,0))        cpu,
      sum(decode(wait_class,'BCPU',1,0))        bcpu,
      decode(max(sql_opcode),1,'DDL',
                        2,'INSERT',
                3,'Query',
                6,'UPDATE',
                7,'DELETE',
               47,'PL/SQL_package_call',
               50,'Explain Plan',
              170,'CALL',
              189,'MERGE',to_char(max(sql_opcode)))  opcode,
       sql_plan_hash_value
          from
             (select
                sql_id,
            sample_id,
            /* opcode for sql_id null and 0 can be different */
                    decode(nvl(sql_id,'0'),'0',0,sql_opcode) sql_opcode,
            decode(session_state,'ON CPU',
                      decode(session_type,'BACKGROUND','BCPU','ON CPU')
            , wait_class)  wait_class ,
                sql_plan_hash_value
            from v$active_session_history
            --from ash_dump
         where
                    sample_time >= to_date('245691032070','JSSSSS') and
                    sample_time <= to_date('245691032835','JSSSSS')
    union all
             select
                sql_id,
            sample_id,
            /* opcode for sql_id null and 0 can be different */
                    decode(nvl(sql_id,'0'),'0',0,sql_opcode) sql_opcode,
            decode(session_state,'ON CPU',
                      decode(session_type,'BACKGROUND','BCPU','ON CPU')
            , wait_class)  wait_class ,
                sql_plan_hash_value
            from  dba_hist_active_sess_history
         where
                    sample_time >= to_date('245691032070','JSSSSS') and
                    sample_time <= to_date('245691032835','JSSSSS')
               ) ash
            -- select aud.name
            -- sys.audit_actions aud
        --where aud.action = ash.sql_ocode
       group by sql_id,sql_plan_hash_value
       order by total desc
      ) where rownum < 20
