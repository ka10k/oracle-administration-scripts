SELECT to_char(startup_time,'DD-MON-YYYY HH24:MI:SS') "DB Startup Time" FROM   sys.v_$instance;

--for rac
select instance_name "Instance Name",
database_status "Database Status",
version "Database Version",
to_char(startup_time,'DD-MON-YYYY HH24:MI:SS') "DB Startup Time" 
from gv$instance;

