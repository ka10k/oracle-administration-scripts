select SID||':'||serial#,
       target,
       TIme_remaining,
       elapsed_seconds,
       message
from V$SESSION_LONGOPS  where time_remaining <>0

