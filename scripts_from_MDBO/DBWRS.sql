SELECT value db_writers
                           FROM v$parameter
                          WHERE name='db_writer_processes'