set pagesize 500 ;

set linesize 500 ;

select 'SET NEWNAME FOR DATAFILE ' || FILE_ID || ' TO ' || '''' || '/db/sip_pn/TSIPPN/' || substr( FILE_NAME, 30 ) || '''' || ';'   from dba_data_files order by FILE_ID;
select 'SET NEWNAME FOR TEMPFILE ' || FILE_ID || ' TO ' || '''' || '/db/sip_pn/TSIPPN/' || substr( FILE_NAME, 30 ) || '''' || ';'   from dba_temp_files;
  
