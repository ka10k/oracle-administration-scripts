#!/bin/bash
source /home/oracle/.envDB
echo "Linux environment loaded"
/bin/cp /ora/11gR2/network/admin/sqlnet_start.ora /ora/11gR2/network/admin/sqlnet.ora
echo "sqlnet.ora for starting PHP copied"
/ora/11gR2/bin/lsnrctl reload LISTENER
echo "LISTENER reloaded"
/ora/11gR2/bin/sqlplus / as sysdba << EOF
whenever sqlerror exit sql.sqlcode;
alter system set job_queue_processes=0;
alter system set aq_tm_processes=0;
exit;
EOF
echo "Jobs set to 0"
/bin/kill -9 `/bin/ps -ef|/bin/grep "ora_j00" |/bin/awk '{print $2}'`
echo "Jobs killed"
echo "Starting kill sessions"
/bin/kill -9 `/bin/ps -ef|/bin/grep "oraclestartip (LOCAL=NO)" |/bin/awk '{print $2}'`
