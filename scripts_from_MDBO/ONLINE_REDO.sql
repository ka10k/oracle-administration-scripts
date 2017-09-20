SELECT TO_CHAR(l.sequence#) sequence#,
                                l.group# group#,
                                l.status group_status,
                                l.archived archived,
                                f.member member_name,
                                a.name   archived_name,
                                DECODE(f.status, NULL, 'IN USE', f.status) member_status,
                                l.bytes bytes,
                                TO_CHAR(l.first_change#) first_change,
                                TO_CHAR(l.first_time, 'DD/MON/YYYY HH24:MI:SS') first_time
                           FROM v$log l, v$logfile f, v$archived_log a
                          WHERE l.group# = f.group#
                            AND l.sequence# = a.sequence#(+)