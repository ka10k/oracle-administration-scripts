--ALTER SESSION SET ddl_lock_timeout=300;
--drop index SIP_NN.TB_SERVICES_INDX1;
--alter table sip_ul.TB_WTMPS_ARCHIVE truncate partition PART2015_04;
--alter table sip_ul.TB_WTMPS_SESSIONS_ARCHIVE truncate partition PART2015_04;
--alter table sip_ul.TB_WTMPS_SESSION_CHARGES truncate partition PART2015_04;


BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_UL'
     ,TabName        => 'TB_WTMPS_ARCHIVE'
     ,PartName       => 'PART2015_04'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 4
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/

BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_UL'
     ,TabName        => 'TB_WTMPS_SESSIONS_ARCHIVE'
     ,PartName       => 'PART2015_04'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 4
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/


BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'SIP_UL'
     ,TabName        => 'TB_WTMPS_SESSION_CHARGES'
     ,PartName       => 'PART2015_04'
    ,Granularity       => 'PARTITION'
    ,Estimate_Percent  => NULL
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 4
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/



