
--Gather whole SCHEMA
/*
BEGIN
  SYS.DBMS_STATS.GATHER_SCHEMA_STATS (
     OwnName           => 'SIP_OR'
    ,Granularity       => 'ALL'
    ,Options           => 'GATHER'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 6
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

*/

--Gather 3 PARTITIONS
BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_OR'
     ,TabName        => 'TB_SERVICES'
     ,PartName       => 'PART2015_01'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 8
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_OR'
     ,TabName        => 'TB_SERVICES'
     ,PartName       => 'PART2015_02'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 8
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_OR'
     ,TabName        => 'TB_SERVICES'
     ,PartName       => 'PART2015_03'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 8
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

