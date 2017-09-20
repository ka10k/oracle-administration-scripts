SELECT d.name file_name,
                                   d.blocks,
                                   f.phywrts,
                                   f.phyrds,
                                   f.readtim,
                                   f.writetim,
                                   t.name tablespace_name,
                                   f.phywrts/d.blocks wrts_per_block,
                                   f.phyrds/d.blocks rds_per_block
                              FROM v$filestat f,
                                   v$datafile d,
                                   sys.ts$ t
                             WHERE f.file#=d.file#
                               AND d.blocks >0
                               AND t.ts#=d.ts#
                             UNION ALL
                            SELECT d.name file_name,
                                   d.blocks,
                                   f.phywrts,
                                   f.phyrds,
                                   f.readtim,
                                   f.writetim,
                                   t.name tablespace_name,
                                   f.phywrts/d.blocks wrts_per_block,
                                   f.phyrds/d.blocks rds_per_block
                              FROM v$tempstat f,
                                   v$tempfile d,
                                   sys.ts$ t
                             WHERE f.file#=d.file#
                               AND d.blocks >0
                               AND t.ts#=d.ts#