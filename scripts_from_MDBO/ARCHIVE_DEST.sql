SELECT destination archive_dest
                              FROM v$archive_dest
                             WHERE  status='VALID'
                               AND  target<>'STANDBY'