

--select count(*) from sip_w.tb_invoices partition (PART2014_12);
--select * from dba_tab_partitions where table_name='TB_INVOICES' and partition_name='PART2014_12';
exec DBMS_STATS.GATHER_TABLE_STATS(ownname => 'SIP_W', tabname => 'TB_INVOICES', cascade => TRUE, ESTIMATE_PERCENT => NULL, granularity => 'PARTITION',DEGREE=>8);