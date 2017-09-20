select ins.instance_name,ins.host_name,round(os.value,2) load 
from gv$osstat os, gv$instance ins
where os.inst_id=ins.inst_id and os.stat_name='LOAD'
order by 3 desc
