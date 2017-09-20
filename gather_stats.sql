BEGIN
  SYS.DBMS_STATS.GATHER_DICTIONARY_STATS (
     Granularity       => 'ALL'
    ,Options           => 'GATHER'
    ,Estimate_Percent  => SYS.DBMS_STATS.AUTO_SAMPLE_SIZE
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 4
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

BEGIN
  SYS.DBMS_STATS.GATHER_FIXED_OBJECTS_STATS (
    No_Invalidate     => FALSE);
END;
/
/*
BEGIN
  SYS.DBMS_STATS.GATHER_DATABASE_STATS (
     Granularity       => 'ALL'
    ,Options           => 'GATHER'
    ,Gather_Sys        => FALSE
    ,Estimate_Percent  => SYS.DBMS_STATS.AUTO_SAMPLE_SIZE
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 4
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/
*/


BEGIN
  SYS.DBMS_STATS.GATHER_SCHEMA_STATS (
     OwnName           => 'SIP_OR'
    ,Granularity       => 'ALL'
    ,Options           => 'GATHER'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 8
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

