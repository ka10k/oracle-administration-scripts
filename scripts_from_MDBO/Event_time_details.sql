select
          event#
          ,max(to_char(sample_time,'SSSSS'))
          ,sum(decode(type,'ash',1,'hist',10)) cnt
          ,max(sample_id) sample_id
          , max(to_char(sample_time,'J')) last_day
          , trunc(to_char(sample_time,'SSSSS')/bucket)*bucket     beg_secs
          ,(trunc(to_char(sample_time,'SSSSS')/bucket)+1)*bucket  end_secs
          , min(to_char(sample_time,'J')) first_day,
      session_type
       from
          (
            select
                15 bucket,
                sample_time,
                sample_id,
                translate(
                     decode(session_state,'ON CPU',
                                           decode(session_type,'BACKGROUND','BCPU','CPU')
                     ,event)
                    ,' $/','____') /* replace first characters with undescore, get rid of / */
                event#,
        'ash' type,
        session_type
            from v$active_session_history
            --from ash_dump
            where
             sample_id > 4210634
     union all
            select
                15 bucket,
                sample_time,
                sample_id,
                translate(
                     decode(session_state,'ON CPU',
                      decode(session_type,'BACKGROUND','BCPU','CPU')
                     ,event)
                    ,' $/','____')
                event#,
        'hist' type,
        session_type
            from  dba_hist_active_sess_history
            where
             sample_id > 4210634 and
        sample_time < (select min(sample_time) from v$active_session_history)
            )
       group by
          (trunc(to_char(sample_time,'SSSSS')/bucket)+1)*bucket ,
           trunc(to_char(sample_time,'SSSSS')/bucket)*bucket  ,
          event#, session_type
       order by last_day,end_secs
