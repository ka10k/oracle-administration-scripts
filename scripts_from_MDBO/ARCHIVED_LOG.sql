SELECT /* This query reports the rate of archive logging over the last 5 minutes */
                                SUM(blocks*block_size) bytes,
                                DECODE((sysdate-min(completion_time))*24*3600,0,1,
                                           (sysdate-min(completion_time))*24*3600 ) seconds,
                                NVL((SUM(blocks*block_size) / 1024) /
                                        (DECODE((sysdate-min(completion_time))*24*3600,0,1,
                                            (sysdate-min(completion_time))*24*3600 )),0) archived_kb_ps
                           FROM v$archived_log l
                          WHERE completion_time > sysdate-(5/(24*60))