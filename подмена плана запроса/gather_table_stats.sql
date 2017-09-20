--exec DBMS_STATS.GATHER_TABLE_STATS(ownname => 'CH', tabname => 't_abs_order_status', cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'ALL',DEGREE=>8);

BEGIN
  SYS.DBMS_STATS.GATHER_TABLE_STATS (
      OwnName        => 'CH'
     ,TabName        => 'T_ABS_ORDER_STATUS'
    ,Estimate_Percent  => SYS.DBMS_STATS.AUTO_SAMPLE_SIZE
    ,Method_Opt        => 'FOR ALL COLUMNS SIZE 1'
    ,Degree            => 8
    ,Cascade           => TRUE
    ,No_Invalidate     => FALSE);
END;
/