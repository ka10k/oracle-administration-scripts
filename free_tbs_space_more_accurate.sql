set serveroutput on size 1000000
exec DBMS_OUTPUT.ENABLE(1000000);
set serveroutput on;

DECLARE

    block_size  NUMBER; --16384 8192
    max_size NUMBER;
    used_size NUMBER;
    free_size NUMBER;
    tbs_counter NUMBER;
    counter NUMBER:= 0;
    tbs_name VARCHAR2(50);
    out_line VARCHAR2(2000);

    CURSOR get_max_size IS
    select sum((CASE maxblocks WHEN 0 THEN 4194302 ELSE maxblocks  END)*block_size/1024/1024/1024),tablespace_name  from dba_data_files group by tablespace_name order by 2;

    CURSOR get_used IS
    select sum(bytes/1024/1024/1024),tablespace_name from dba_extents group by tablespace_name order by 2;


BEGIN

select value into block_size from v$spparameter where name = 'db_block_size';
select count(tablespace_name) into tbs_counter from dba_tablespaces;

OPEN get_max_size;
OPEN get_used;

IF(tbs_counter>1) THEN

    LOOP
    FETCH get_max_size INTO max_size, tbs_name;
    FETCH get_used INTO used_size, tbs_name;
    EXIT WHEN get_max_size%NOTFOUND;
    free_size:= round(max_size-used_size,2);
    --out_line:= out_line ||chr(13)||chr(10) || tbs_name || '_free=' || free_size|| 'Gb.';
    --out_line:= out_line || tbs_name || '_free=' || free_size|| 'Gb.';
    dbms_output.put_line(tbs_name || ' free='|| free_size || 'Gb');
    END LOOP;

ELSE

    FETCH get_max_size INTO max_size, tbs_name;
    FETCH get_used INTO used_size, tbs_name;
    free_size:= round(max_size-used_size,2);
    --out_line:= chr(13)||chr(10) ||tbs_name ||'_free=' || free_size|| 'Gb.';
    --out_line:=tbs_name ||'_free=' || free_size|| 'Gb.';
    dbms_output.put_line(tbs_name || ' free='|| free_size || 'Gb');

END IF;



CLOSE get_max_size;
CLOSE get_used;

dbms_output.put_line(out_line);

END;