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

