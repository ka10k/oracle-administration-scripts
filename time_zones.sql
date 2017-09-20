 --select to_timestamp_tz('20070311 00:00:00 US/EASTERN','YYYYMMDD HH24:MI:SS TZR') + to_dsinterval('0 08:00:00') TEST from dual;
 --SELECT tzname, tzabbrev FROM V$TIMEZONE_NAMES;
 --SELECT sessiontimezone FROM DUAL;
 --SELECT dbtimezone FROM DUAL;
 --select property_name, substr(property_value, 1, 30) value from database_properties where property_name like 'DST_%' order by property_name;
 --select * from v$timezone_file;
 SELECT TIMESTAMP '2011-10-20 15:22:23 +4:00' AT TIME ZONE 'Europe/Moscow',
        TIMESTAMP '2011-11-20 15:22:23 +4:00' AT TIME ZONE 'Europe/Moscow',
        TIMESTAMP '2012-04-20 15:22:23 +4:00' AT TIME ZONE 'Europe/Moscow'
        from dual;
        

select case to_number(to_char(to_timestamp_tz

            ('20070311 00:00:00 US/EASTERN','YYYYMMDD HH24:MI:SS TZR')

            + to_dsinterval('0 08:00:00'),'HH24'))

            when 8 then 'The patch has not been applied'

            when 9 then 'The patch has been applied correctly'

            else 'Error' end "TZTEST (RUN FROM DB HOME)"

       from dual;        