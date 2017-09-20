SELECT kcbwbpd.bp_name name,
                                   SUM (kcbwds.fbwait) free_buffer_wait,
                                   SUM (kcbwds.wcwait) write_complete_wait,
                                   SUM (kcbwds.bbwait) buffer_busy_wait,
                                   0 db_block_change,
                                   0 db_block_gets,
                                   0 consistent_gets,
                                   SUM (kcbwds.pread)  physical_reads,
                                   SUM (kcbwds.pwrite) physical_writes
                              FROM x$kcbwds kcbwds, x$kcbwbpd kcbwbpd
                             WHERE kcbwds.set_id >= kcbwbpd.bp_lo_sid
                               AND kcbwds.set_id <= kcbwbpd.bp_hi_sid
                               AND kcbwbpd.bp_size != 0
                             GROUP BY kcbwbpd.bp_id, kcbwbpd.bp_name