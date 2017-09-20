--select * from v$session

select USERNAME,count(*) as cnt from v$session group by USERNAME;