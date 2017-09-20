select Username, Timestamp as Time_Login, Terminal, OS_Username as OSUser, ReturnCode as Code_Error

     , case returncode when  1005 then 'null password given; logon denied'

                       when  1017 then 'invalid username/password; logon denied'

                       when  1035 then 'ORACLE only available to users with RESTRICTED SESSION privilege'

                       when  1045 then 'user string lacks CREATE SESSION privilege; logon denied'

                       when  1925 then 'maximum of string enabled roles exceeded'

                       when  2002 then 'error while writing to audit trail'

                       when  2067 then 'transaction or savepoint rollback required'

                       when 14552 then 'cannot perform a DDL, commit or rollback inside a query or DML'

                       when 28000 then 'the account is locked'

                       when 28001 then 'the password has expired'

                       when 28003 then 'password verification for the specified password failed'

                       when 28007 then 'the password cannot be reused'

                       when  2391 then 'exceeded simultaneous SESSIONS_PER_USER limit'

                                  else ''

       end as cause_of_error

from dba_audit_session

where returncode <> 0 order by 2 desc;