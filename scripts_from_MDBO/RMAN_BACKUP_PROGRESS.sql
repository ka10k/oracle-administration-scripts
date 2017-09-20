select a.sid, CLIENT_INFO Ch, a.STATUS,open_time, round(BYTES/1024/1024,2) "SOFAR Mb" , round(total_bytes/1024/1024,2)
TotMb, io_count,round(BYTES/TOTAL_BYTES*100,2) "% Complete" , a.type, filename
from v$backup_async_io a,  gv$session s where  not  a.STATUS in ('UNKNOWN')
and a.sid=s.sid and open_time > to_date('07.03.2014 19:00','dd.mm.yyyy hh24:mi')  and filename like '/or%' order by 2,7
