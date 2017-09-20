cat reinstall_agent.sh 
#!/bin/bash
cd /home/oracle
source /home/oracle/.envAgent
/ora/Agent12/agent_inst/bin/emctl stop agent
#Deinstall the plug-in homes:
/ora/Agent12/core/12.1.0.5.0/oui/bin/runInstaller -deinstall -silent "REMOVE_HOMES={/ora/Agent12/plugins/oracle.sysman.db.discovery.plugin_12.1.0.8.0,/ora/Agent12/plugins/oracle.sysman.emas.discovery.plugin_12.1.0.8.0,/ora/Agent12/plugins/oracle.sysman.emfa.discovery.plugin_12.1.0.6.0,/ora/Agent12/plugins/oracle.sysman.oh.agent.plugin_12.1.0.5.0,/ora/Agent12/plugins/oracle.sysman.oh.discovery.plugin_12.1.0.5.0,/ora/Agent12/plugins/oracle.sysman.xa.discovery.plugin_12.1.0.6.0,/ora/Agent12/plugins/oracle.sysman.db.agent.plugin_12.1.0.8.0}" ORACLE_HOME=/ora/Agent12/core/12.1.0.5.0 -removeAllFiles -invPtrLoc /ora/Agent12/core/12.1.0.5.0/oraInst.loc
#Deinstall the sbin home:
/ora/Agent12/core/12.1.0.5.0/oui/bin/runInstaller -deinstall -silent "REMOVE_HOMES={/ora/Agent12/sbin}" ORACLE_HOME=/ora/Agent12/core/12.1.0.5.0 -removeAllFiles -invPtrLoc /ora/Agent12/core/12.1.0.5.0/oraInst.loc
#Deinstall the Management Agent:
/ora/Agent12/core/12.1.0.5.0/oui/bin/runInstaller -deinstall -silent "REMOVE_HOMES={/ora/Agent12/core/12.1.0.5.0}" ORACLE_HOME=/ora/Agent12/core/12.1.0.5.0 -removeAllFiles -invPtrLoc /ora/Agent12/core/12.1.0.5.0/oraInst.loc
#Manually delete the agent base directory:
rm -rf /ora/Agent12
mkdir /ora/Agent12
chmod -R 755 /ora/Agent12
cd /ora/Agent12
wget --no-check-certificate https://cc.cod.vt.ru:4900/em/install/getAgentImage
chmod +x getAgentImage
./getAgentImage LOGIN_USER=a.grishin PLATFORM="Linux x86-64" AGENT_BASE_DIR=/ora/Agent12 << EOF
Progamer2005#
connect123
EOF
