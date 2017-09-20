select name, bytes from v$tempfile;
select name from v$datafile;

--information stored in the control file from data-dictionary views
select distinct type from v$controlfile_record_section;

--database information stored in the control file
select name, open_mode, created, current_scn from v$database;

show parameter control_files;
select name from v$controlfile;