SELECT DECODE(ksmchcls, 'freeabl', 'Freeable',
                                                 'recr',    'Re-creatable',
                                                 'R-freea', 'Freeable',
                                                 'R-recr',  'Re-creatable',
                                                 'perm',    'Permanent',
                                                 'R-free',  'Reserved pool free',
                                                 ksmchcls) status,
                                SUM(ksmchsiz) bytes
                           FROM x$ksmsp
                          GROUP BY DECODE(ksmchcls, 'freeabl', 'Freeable',
                                                    'recr',    'Re-creatable',
                                                    'R-freea', 'Freeable',
                                                    'R-recr',  'Re-creatable',
                                                    'perm',    'Permanent',
                                                    'R-free',  'Reserved pool free',
                                                     ksmchcls)