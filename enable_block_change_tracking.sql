SELECT filename, status, bytes FROM v$block_change_tracking;

--ALTER DATABASE DISABLE BLOCK CHANGE TRACKING;
--ALTER DATABASE ENABLE BLOCK CHANGE TRACKING USING FILE '/orabin/apps/oracle/product/dbs10.2.0/dbs/rfsodsp.bct';