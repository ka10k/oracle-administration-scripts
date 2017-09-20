SELECT NVL(a.size_mb, 0) + NVL(b.size_mb, 0) size_mb
                            FROM (SELECT /*+ ORDERED */
                                         SUM(NVL(f.length, 0) * t.blocksize)/1048576 size_mb
                                    FROM sys.ts$ t, sys.fet$ f
                                   WHERE t.ts# = f.ts#
                                     AND t.bitmapped = 0
                                     AND t.online$ = 1
                                     AND t.contents$ <> 1) a,
                                  (SELECT /*+ ORDERED */
                                          SUM(NVL(f.ktfbfeblks, 0) * ts.blocksize)/1048576 size_mb
                                     FROM sys.ts$ ts, x$ktfbfe f
                                    WHERE ts.ts# = f.ktfbfetsn
                                      AND ts.bitmapped <> 0
                                      AND ts.online$ = 1
                                      AND ts.contents$ <> 1) b