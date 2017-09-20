SELECT /*+ ALL_ROWS */
                                 COUNT(DISTINCT t.ts#) failing_segments
                            FROM (SELECT ts#, MAX(extsize) maxext FROM sys.seg$ GROUP BY ts#) s,
                                 (SELECT ts#, MAX(length) maxfrag FROM sys.fet$ GROUP BY ts#) f,
                                 sys.file$ fi, sys.ts$ t
                           WHERE fi.inc = 0
                             AND t.online$ = 1
                             AND t.contents$ = 0
                             AND t.ts# = fi.ts#
                             AND t.ts# = s.ts#
                             AND t.ts# = f.ts#(+)
                             AND s.maxext > f.maxfrag