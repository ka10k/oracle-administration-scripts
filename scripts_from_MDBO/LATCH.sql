SELECT d.indx indx,
                                D.KSLLDNAM name,
                                N_LATCHES  n_latch,
                                LA.GETS,
                                LA.IMMEDIATE_GETS,
                                LA.MISSES,
                                LA.SLEEPS
                           FROM X$KSLLD D, (SELECT KSLLTNUM LATCH#,
                                                   SUM(KSLLTWGT) GETS,
                                                   SUM(KSLLTWFF) MISSES,
                                                   SUM(KSLLTWSL) SLEEPS,
                                                   SUM(KSLLTNGT) IMMEDIATE_GETS,
                                                   COUNT(*) N_LATCHES
                                              FROM X$KSLLT
                                             WHERE KSLLTWGT>0
                                             GROUP BY KSLLTNUM) LA
                          WHERE LA.LATCH# = D.INDX
                            AND D.INST_ID=USERENV('INSTANCE')