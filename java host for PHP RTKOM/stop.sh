#!/bin/bash
source /home/oracle/.envDB
echo "Linux environment loaded"
/bin/cp /ora/11gR2/network/admin/sqlnet_stop.ora /ora/11gR2/network/admin/sqlnet.ora
echo "sqlnet.ora for allowing access copied"
/ora/11gR2/bin/lsnrctl reload LISTENER
echo "LISTENER reloaded"
/ora/11gR2/bin/sqlplus / as sysdba << EOF
whenever sqlerror exit sql.sqlcode;
alter system set job_queue_processes=30;
alter system set aq_tm_processes=1;
exit;
EOF
echo "Jobs set to 30"
