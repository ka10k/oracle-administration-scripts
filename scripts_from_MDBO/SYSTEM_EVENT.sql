SELECT /*+  ORDERED */
                                            D.INST_ID,
                                            D.KSLEDNAM event,
                                            S.KSLESWTS total_waits,
                                            S.KSLESTMO total_timeouts,
                                            S.KSLESTIM time_waited,
                                            S.KSLESTIM / DECODE(S.KSLESWTS,0,1,S.KSLESWTS) average_wait,
                                            S.INDX indx
                                       FROM X$KSLED D, X$KSLEI S
                                      WHERE S.INDX = D.INDX
                                        AND d.INST_ID = USERENV('INSTANCE')