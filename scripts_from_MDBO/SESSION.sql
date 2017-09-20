SELECT /**/
                                     s.sid      sid,
                                     s.serial#  serial,
                                     NVL(DECODE(type,'BACKGROUND','SYS ('||b.name||')',
                                           s.username),substr(p.program,instr(p.program,'('))) oracle_user,
                                     s.process  client_pid,
                                     s.fixed_table_sequence fixed_table_sequence,
                                     s.status status,
                                     s.server server,
                                     s.machine machine,
                                     p.spid server_pid,
                                     nvl(s.osuser,'('||b.name||')')  os_user,
                                     (i.block_gets+i.consistent_gets) logical_reads,
                                     s.program  client_program,
                                     i.physical_reads physical_reads,
                                     t.ksusestv*10 cpu_usage,
                                     p.program  server_program,
                                     s.logon_time logon_time,
                                     (i.block_changes+i.consistent_changes) block_changes,
                                     i.consistent_gets consistent_gets,
                                     ((i.block_gets+i.consistent_gets)-i.physical_reads)*100/
                                        DECODE((i.block_gets+i.consistent_gets),0,1,
                                                  (i.block_gets+i.consistent_gets)) hit_rate,
                                     i.block_gets block_gets,
                                     s.username user_name,
                                     s.client_info client_info,
                                     s.module module,
                                     s.action action,
                                     s.resource_consumer_group resource_consumer_group,
                                     s.sql_address sql_address,
                                     s.sql_hash_value
                                FROM v$session s,
                                     v$process p,
                                     v$sess_io i,
                                     x$ksusesta t,
                                     v$bgprocess b
                               WHERE p.addr=s.paddr
                                 AND i.sid=s.sid
                                 AND t.indx=s.sid
                                 AND t.ksusestn=12
                                 AND p.addr=b.paddr(+)