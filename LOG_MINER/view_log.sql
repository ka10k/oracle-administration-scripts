    
    --select * from V$LOGFILE;
   -- EXECUTE DBMS_LOGMNR.ADD_LOGFILE(LOGFILENAME => '/db/CNSIIP/redo03.log', OPTIONS => DBMS_LOGMNR.NEW);
   -- EXECUTE DBMS_LOGMNR.START_LOGMNR(OPTIONS => DBMS_LOGMNR.DICT_FROM_ONLINE_CATALOG);
    --SELECT scn,TO_CHAR(timestamp, 'DD-MON-YYYY HH24:MI:SS'),operation,seg_name,table_name FROM v$logmnr_contents where rownum <1000;
    --SELECT * FROM v$logmnr_contents where rownum <100;
    
    --EXECUTE DBMS_LOGMNR.END_LOGMNR();