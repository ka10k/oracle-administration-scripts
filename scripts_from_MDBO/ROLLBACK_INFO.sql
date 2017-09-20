SELECT /*+ ORDERED ALL_ROWS*/
                                 undo.name name,
                                 ts.name tablespace,
                                 us.name username,
                                 DECODE(undo.status$,1,'Invalid',
                                                     2,'Avail',
                                                     3,'In Use',
                                                     4,'Offline',
                                                     5,'Needs Recovery') status,
                                 ROUND(seg.blocks * ts.blocksize /(1024*1024), 2) rb_size,
                                 seg.minexts minexts,
                                 seg.extents extents,
                                 seg.maxexts maxexts,
                                 ROUND(seg.iniexts * ts.blocksize / (1024*1024), 2) iniexts,
                                 ROUND(seg.extsize * ts.blocksize / (1024*1024), 2) extsize,
                                 v.xacts xacts,
                                 v.extends extends,
                                 v.shrinks shrinks,
                                 v.wraps wraps,
                                 ROUND(v.aveshrink/(1024*1024) ,2) avg_shrink,
                                 v.gets gets,
                                 v.writes writes,
                                 v.waits waits,
                                 ROUND(v.rssize/(1024*1024), 2) rssize,
                                 ROUND(v.optsize/(1024*1024), 2) optsize
                            FROM sys.undo$ undo,
                                 sys.ts$ ts,
                                 sys.seg$ seg,
                                 sys.user$ us,
                                 sys.v_$rollstat v
                           WHERE ts.ts# = undo.ts#
                             AND ts.ts# = seg.ts#
                             AND seg.file# = undo.file#
                             AND seg.block# = undo.block#
                             AND seg.user# = us.user#
                             AND v.usn (+) = undo.us#