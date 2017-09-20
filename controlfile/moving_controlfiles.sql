--show parameter control
--control_files                        string   /db/sip_arch/db/control01.ctl, /db/sip_arch/fra/control02.ctl


--    Moving Oracle control files
mv /u02/oradata/TEST/control*.ctl /u03/oradata/TEST

startup  nomount;
alter 
system set control_files='/u03/oradata/TEST/control01.ctl',
'/u03/oradata/TEST/control02.ctl', '/u03/oradata/TEST/control03.ctl'
scope=SPFILE;


RMAN> restore controlfile to '+SIP_ARCH' from '/db/sip_arch/db/control01.ctl';


alter system set control_files='+SIP_ARCH/SIPARCH/CONTROLFILE/current.261.907142821','+SIP_ARCH/SIPARCH/CONTROLFILE/control02.ctl' scope=spfile;

shutdown  immediate;
startup  nomount
show  parameter control_files
alter  database mount;
alter  database open;