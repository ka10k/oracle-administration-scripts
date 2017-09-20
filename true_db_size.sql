SELECT a.files   + b.files   files,
                                   a.tss     + b.tss     tss,
                                   a.size_mb + b.size_mb size_mb
                              FROM (SELECT /*+ ORDERED CLUSTER(F) */
                                           COUNT(DISTINCT f.file#)             files,
                                           COUNT(DISTINCT t.ts#)               tss,
                                           NVL(SUM(t.blocksize * f.blocks),0)/1048576 size_mb
                                      FROM sys.ts$ t, sys.file$ f
                                     WHERE f.ts# = t.ts#
                                       AND t.online$ = 1
                                       AND t.contents$ <> 1
                                       AND t.bitmapped = 0
                                       AND f.spare1 is null ) a,
                                   (SELECT /*+ ORDERED CLUSTER(F) USE_HASH(HC) */
                                           COUNT(DISTINCT f.file#)             files,
                                           COUNT(DISTINCT t.ts#)               tss,
                                           NVL(SUM(t.blocksize * hc.ktfbhcsz),0)/1048576 size_mb
                                      FROM sys.ts$ t, sys.file$ f, x$ktfbhc hc
                                     WHERE t.ts# = f.ts#
                                       AND f.file# = hc.ktfbhcafno
                                       AND t.online$ = 1
                                       AND t.contents$ <> 1
                                       AND t.bitmapped <> 0
                                       AND f.spare1 is NOT NULL
                                       AND hc.ktfbhctsn = t.ts# ) b