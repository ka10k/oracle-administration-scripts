SELECT name,
                                ROUND(SUM(bytes)/1024) kb,
                                SUM(shared_pool) shared_pool_kb
                           FROM (SELECT DECODE(name, 'db_block_buffers', 'buffer cache',
                                                     'sql area',         'sql area',
                                                     'library cache',    'library cache',
                                                     'log_buffer',       'log buffer',
                                                     'fixed_sga',        'fixed sga',
                                                     'free memory', DECODE(pool, 'shared pool', 'free memory',
                                                                                   'non-shr pool free'),
                                                     'sessions',         'session memory',
                                                     'session heap',     'session memory',
                                                     'dictionary cache', 'dictionary cache',
                                                     'other shared pool') name,
                                        bytes,
                                        0 shared_pool
                                   FROM v$sgastat
                                  UNION
                                 SELECT 'Shared Pool Size',
                                        0,
                                        (value/1024) kb
                                   FROM v$parameter
                                  WHERE name='shared_pool_size')
                          GROUP BY name