--select * from V$ACTIVE_SESSION_HISTORY where rownum<100;
 --SELECT baseline_id, baseline_name, start_snap_id, end_snap_id FROM dba_hist_baseline;
 --SELECT SYSTEM.CHECKAWR FROM DUAL;
 EXECUTE DBMS_WORKLOAD_REPOSITORY.CREATE_SNAPSHOT(); --create 1 snapshot